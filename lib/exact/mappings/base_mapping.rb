module Exact
  class BaseMapping
    def self.convert(exact_object, object = nil)
      name = to_s.demodulize
      name.slice!('Mapping')
      attributes = Exact.const_get(name).attributes.to_a.map{|a| a.options[:name].to_s }
      hsh = exact_object.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete('@').to_sym] = exact_object.instance_variable_get(var) if attributes.include? var.to_s.delete('@') }.except!(:__metadata)
      if object.present?
        hsh.each do |k, v|
          object.send("#{k}=", v)
        end
        object
      else
        Exact.const_get(name).new(hsh) unless object.present?
      end
    end
  end
end
