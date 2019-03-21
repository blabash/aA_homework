def sluggish_Octo(arr)

    biggest = nil
    arr.each do |el|
        arr.each do |e|
            e > el ? biggest = e : biggest = el
        end
    end
    biggest
end

def dominant_Octo(arr)
    def merge(arr1, arr2)
        new_arr = []
        while !arr1.empty? && !arr2.empty?
            n = arr1.first.length < arr2.first.length ? arr1.shift : arr2.shift
            new_arr.push(n)
            new_arr += arr2 if arr1.empty?
            new_arr += arr1 if arr2.empty?
        end
        new_arr
    end

    if arr.length == 1
        return arr
    else
        merge(dominant_Octo(arr[0..arr.length/2 - 1]), dominant_Octo(arr[arr.length/2..-1]) )
    end
end

def clever_Octo(arr)
    biggest = arr[0]
    (0...arr.length - 1).each do |i|
        biggest = arr[i + 1] if biggest.length < arr[i + 1].length
    end
    biggest
end

def slow_dance(direction, tiles_arr)
    tiles_arr.each_with_index {|dir, i| return i if dir == direction }
end

def constant_dance(direction, tiles_hash)
    tiles_hash[direction]
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
tiles_hash = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7 }

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p sluggish_Octo(fishes)
p dominant_Octo(fishes)[-1]
p clever_Octo(fishes)
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p constant_dance("down", tiles_hash)