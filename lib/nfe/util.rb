module Nfe
  class Util
    OBJECT_TYPES = {
        'company' => Nfe::Company,
        'serviceInvoice' => Nfe::ServiceInvoice,
        'naturalPeople' => Nfe::NaturalPeople
    }

    def self.get_object_type(type)
      object_type = Nfe::NfeObject
      object_type = OBJECT_TYPES[type] if OBJECT_TYPES[type]
      object_type
    end

    def self.symbolize_names(object)
      case object
        when Hash
          new = {}
          object.each do |key, value|
            key = (key.to_sym rescue key) || key
            new[key] = symbolize_names(value)
          end
          new
        when Array
          object.map { |value| symbolize_names(value) }
        else
          object
      end
    end
  end
end