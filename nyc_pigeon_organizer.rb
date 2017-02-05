def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), result|
    #each_with_object iterates over a collection and passes to the block.  useful for building up hashes.
    #|key = names, h=attributes_hash|.  no block so creates as enumerator
    #creates a hash of all levels down after names.
    h.each do |value, names|
      #iterates down to lower levels
      #
      names.each do |name|
        result[name] ||= {}
        result[name][key] ||= []
        result[name][key] << value.to_s
      end
    end
  end
end
