require 'LRU'

describe LRUCache do 
    subject(:lru) { LRUCache.new }
    
    describe '#intialize' do
        it 'creates an empty cache array' do
            expect(lru.cache).to be_empty
        end

        
        it 'assigns a size of 4 when no argument is passed' do
            expect(lru.size).to eq(4)
        end
        
        context 'when a size is passed in' do
            subject(:lru) { LRUCache.new(6) }
            it 'sets size equal to the argument' do
                expect(lru.size).to eq(6)
            end
        end

        it 'raises and ArgumentError if size is not a positive integer' do
            expect { LRUCache.new(-1) }.to raise_error(ArgumentError)
        end
    end

    describe '#add' do
        it 'adds the element to the front of the cache' do
            lru.add('a')
            expect(lru.cache).to eq(['a'])
        end

        it 'adds new elements to the front of the cache (index 0) in sequential order' do
            lru.add('a')
            lru.add('b')
            lru.add('c')
            lru.add('d')
            expect(lru.cache).to eq(['d','c','b','a'])
        end

        it 'maintains the designated cache size' do
            subject(:lru) { LRUCache.new(3) }
                


        context 'when an element is added to the cache that already exists' do
            it 'removes the element, adds it to the front and maintains the order of the remaining elements' do
                lru.add('a')
                lru.add('b')
                lru.add('c')
                lru.add('d')
                lru.add('a')
                expect(lru.cache).to eq(['a','d','c','b'])
            end
        end

    end




end