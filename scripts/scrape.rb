# More info here: https://github.com/bergren2/lp-pokemon-blue/wiki/Collecting-Data
require 'mechanize'

# Grab each name, type(s) and returns as a hash
def get_basic_data
  url = "http://bulbapedia.bulbagarden.net/wiki/Kdex"
  agent = Mechanize.new
  page = agent.get(url)
  rows = page.search(".//span[@id=\"List_of_Pok.C3.A9mon_by_Kanto_Pok.C3.A9dex_number\"]/
                      ../following-sibling::table[@align=\"center\"]/tr[@style=\"background:#FFFFFF;\"]")
  hash = {}

  rows.each do |row|
    poke_hash = {}
    id = row.children[1].children[0].text.chomp.gsub(/^ #/, '')
    name = row.children[7].children[1].text
    type1 = row.children[9].children[1].text
    if has_type2 = row.children[11]
      type2 = has_type2.children[1].text
    end

    poke_hash['name'] = name
    poke_hash['type1'] = type1
    poke_hash['type2'] = type2 if type2

    hash[id] = poke_hash
  end

  return hash
end

### RUN
p get_basic_data
