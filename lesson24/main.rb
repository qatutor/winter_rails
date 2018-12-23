
def m1
array = []
5000_000.times do |i|
  array << "hello world #{i}"
end
end

m1()


sleep 3

GC.start