require 'open-uri'

class Post < ApplicationRecord



def self.drop_url
  drop_url = Post.last
  @drop_url = drop_url[:drop_url]
end

def self.beyond_url
  beyond_url = Post.last
  @beyond_url = beyond_url[:beyond_url]
end

def self.varon_url
  varon_url = Post.last
  @varon_url = varon_url[:varon_url]
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

def self.get_title_drop_opst
  url = drop_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[2]/dd").inner_text
end

def self.get_title_beyond_opst
  url = beyond_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[2]/dd").inner_text
end

def self.get_title_varon_opst
  url = varon_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[2]/dd").inner_text
end

def self.get_drop_price
  url = drop_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[3]/dd").inner_text
end

def self.get_beyond_price
  url = beyond_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[3]/dd").inner_text
end

def self.get_varon_price
  url = varon_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[3]/dd").inner_text
end

def self.get_drop_image
  url = drop_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
    # image.attribute("src").value
    doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/div/div[1]/a/img").attribute("src").value
end

def self.get_beyond_image
  url = beyond_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
    # image.attribute("src").value
    doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/div/div[1]/a/img").attribute("src").value
end

def self.get_varon_image
  url = varon_url
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  
  doc = Nokogiri::HTML.parse(html, nil, charset)
    # image.attribute("src").value
    doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/div/div[1]/a/img").attribute("src").value
end


end
