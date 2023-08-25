# your code here
class MySet

    attr_accessor :hash

    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end

    def self.[](*values)
        self.new(values)
    end
    
    def clear
        @hash.clear
        self
    end

    def each
        @hash.keys.each do |key|
            yield(key)
        end
        self
    end

    def inspect
        my_hash = "{" + hash.keys.join(", ") + "}"
        "#<MySet: #{my_hash}>"
    end

end