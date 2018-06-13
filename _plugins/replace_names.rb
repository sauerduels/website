module Jekyll
  module AssetFilter
    PLAYER_COUNTRIES = {
      'Redon' => 'nl',
      'Honzik1' => 'cz',
      'Lokio' => 'us',
      'Frosty' => 'ca',
      'DarkFire' => 'us',
      'Alluro' => 'de',
      'Partizan' => 'rs',
      'BudSpencer' => 'de',
      'starch' => 'us',
      'hades' => 'us',
      'Rexus' => 'gb',
      'lagout' => 'fr',
      'Gangler' => 'de',
      'bug' => 'il',
      'Fear' => 'de',
      'Aiurz' => 'ch',
      'BenKei' => 'nl',
      'Bertolt_Brecht' => 'gb',
      'h8' => 'in',
      'Khornettoh' => 'fr',
      'Tamin0' => 'de',
      'ZCrone' => 'fr',
      'Josh22' => 'gb',
      'greenadiss' => 'ua',
      'fatmonkeygenius' => 'de',
      'Headway' => 'ru',
      'Harsh' => 'us',
      'yggdrasil' => 'at',
      'Phönix' => 'de',
      'NoobGuy' => 'us',
      'raffael' => 'ba',
      '__FRY__' => 'ru',
      'Morry' => 'ru',
      'Mod' => 'de',
      '4-Tune' => 'de',
      'Tengrichan' => 'hu',
      'hamon' => 'de',
      'Friteq' => 'pl',
      'notas' => 'us',
      'Shinnok' => 'nl',
      'Cannibal' => 'bg',
      'Rotti' => 'de',
      'Calinou' => 'fr',
      '1989' => 'fr',
      'Zarah' => 'se',
      'Shikijo' => 'ca',
      'Rudi' => 'za',
      'Origin' => 'sy' }
    
    def add_flags(input)
      PLAYER_COUNTRIES.each {|key, value| input = input.gsub(key, "<span class=\"player\"><img class=\"flag\" src=\"http://sauerduels.me/images/#{value}.png\" /> #{key}</span>") }
      input
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilter)

