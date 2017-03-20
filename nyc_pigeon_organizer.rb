def nyc_pigeon_organizer(data)
  new_hash = { }
  data.each do |attributes, data_hash|
    data_hash.each do |attribute, array|
      array.each do |value|
       if new_hash[value].nil?
          new_hash[value] = { }
        end
        
        new_hash.each do |value, info|
            info[:color] = []
            info[:gender] = []
            info[:lives] = []
              data.each do |attributes, data_hash|
              data_hash.each do |attribute, array|
              if data[attributes][attribute].include?(value)
                new_hash[value][attributes] << attribute.to_s
              end
            end
          end
        end
      end
    end
  end
  new_hash
end
