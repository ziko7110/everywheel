require 'open-uri'

class Post < ApplicationRecord



def self.drop_url
  @drop_url = 'https://clubdrop.jp/schedule/detail/7079'
end

def self.beyond_url
  @beyond_url = 'https://beyond-osaka.jp/schedule/detail/6439'
end

def self.varon_url
  @varon_url = 'https://osaka-varon.jp/schedule/detail/5557'
end


  def self.get_title_drop
    url = drop_url
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  end

  def self.get_title_beyond
  
    url = beyond_url
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  
  end

  def self.get_title_varon
    url = varon_url
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  end

  def self.get_event_name_drop
    url = drop_url
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/h1").inner_text
  end

 def self.get_event_name_beyond
  url = beyond_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/h1").inner_text
 end

 def self.get_event_name_varon
  url = varon_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/h1").inner_text.split('/')
end

end
