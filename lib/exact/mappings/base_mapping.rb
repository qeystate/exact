module Exact
  class BaseMapping
    def self.convert exact_object, object = nil
      hsh = exact_object.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete('@').to_sym] = exact_object.instance_variable_get(var) }.except!(:__metadata)
      if object.present?
        hsh.each do |k, v|
          object.send("#{k.to_s}=", v)
        end
        object
      else
        name = self.to_s.demodulize
        name.slice!('Mapping')
        Exact.const_get(name).new(hsh) unless object.present?
      end
    end
  end
end
