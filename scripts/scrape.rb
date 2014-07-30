# More info here: https://github.com/bergren2/lp-pokemon-blue/wiki/Collecting-Data
require 'mechanize'

# Grab each name, type(s)
def grab_basic_data
  url = "http://bulbapedia.bulbagarden.net/wiki/Kdex"
  agent = Mechanize.new
  page = agent.get(url)
  rows = page.search(".//span[@id=\"List_of_Pok.C3.A9mon_by_Kanto_Pok.C3.A9dex_number\"]/
                      ../following-sibling::table[@align=\"center\"]/tr[@style=\"background:#FFFFFF;\"]")

  rows.each do |row|
    name = row.children[7].children[1].text
    type1 = row.children[9].children[1].text
    if has_type2 = row.children[11]
      type2 = has_type2.children[1].text
    end

    if type2
      puts "#{name}, #{type1}/#{type2}"
    else
      puts "#{name}, #{type1}"
    end
  end
end

### RUN
grab_basic_data
