require 'open-uri'

class Post < ApplicationRecord

def self.get_title(url)
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("//span[@class='artist other_artists']").inner_text.split('/')
end

def self.get_event_name(url)
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/h1").inner_text
end



def self.get_opst(url)
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[2]/dd").inner_text
end



def self.get_price(url)
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end
  doc = Nokogiri::HTML.parse(html, nil, charset)
  doc.xpath("/html/body/div[1]/div/div[1]/section/div/article/div/dl[3]/dd").inner_text
end




def self.get_image(url)
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
