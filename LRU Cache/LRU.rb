require 'byebug'
class LRUCache
    def initialize(size = 4)
        @cache = []
        @size = size
        # @idx = 0
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache.unshift(el)
        else
            @cache.unshift(el)
            @cache.pop if @cache.length > @size
        end

      # adds element to cache according to LRU principle
        # if @cache.length < @size 
        #     if @cache.empty?
        #         @cache << [el, @idx]
        #         @idx += 1
        #     else
        #         add_new = true
        #         @cache.each do |arr|
        #             if arr[0] == el
        #                 arr[1] = @idx
        #                 @idx += 1
        #                 add_new = false
        #             end
        #         end
        #         if add_new
        #             @cache << [el, @idx]
        #             @idx += 1
        #         end
        #     end
        # else

        #     stalest = @cache.min_by {|arr| arr[1]}
        #     i = @cache.index(stalest)

        #     @cache[i] = [el, @idx]
        #     @idx += 1
        # end
        cache.dup
    end

    def show
      # shows the items in the cache, with the LRU item first
        @cache.dup
    end

    private
    # helper methods go here!


end

# c = LRUCache.new(4)

# c.add('a')
# # debugger
# c.add('b')
# c.add('b')
# p c

