require 'yaml'
NAMES = YAML.load_file('5_names.yaml')

def rot13(name)
  name.chars.map do |x|
    case x.upcase
    when ('A'..'M') then (x.ord + 13).chr
    when ('N'..'Z') then (x.ord - 13).chr
    else                 x
    end
  end.join
end

def decrypt(names)
  names.each_with_object([]) { |name, arr| arr << rot13(name) }
end

puts decrypt(NAMES.values)