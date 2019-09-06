require 'mechanize'
class Scraping
  def self.get_sake
    agent = Mechanize.new
    page = agent.get('https://ja.wikipedia.org/wiki/%E6%97%A5%E6%9C%AC%E9%85%92%E3%81%AE%E9%8A%98%E6%9F%84%E4%B8%80%E8%A6%A7')
    page.search('li').each do |ele|
      name = ele.inner_text
      name1 = name.gsub(/\（.+/, "")
      name2 = name.match(/(?<=[(（]).*?(?=[)）])/)
      brand = Brand.new(name: name1, name_kana: name2)
      brand.save
    end
  end
