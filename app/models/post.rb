require 'open-uri'

class Post < ApplicationRecord

  def self.get_title_drop
    url = 'https://clubdrop.jp/schedule/detail/6006'
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  end

  def self.get_title_beyond
    url = 'https://beyond-osaka.jp/schedule/detail/6439'
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  
  end

  def self.get_title_varon
    url = 'https://osaka-varon.jp/schedule/detail/5557'
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
  end

  def self.get_event_name_drop
    url = 'https://clubdrop.jp/schedule/detail/6006'
    charset = nil
    html = open(url) do |f|
      charset = f.charset # 文字種別を取得
      f.read # htmlを読み込んで変数htmlに渡す
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)
    doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/h1").inner_text
    
    
  end
end
