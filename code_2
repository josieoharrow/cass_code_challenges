s='
def j(s)
a,b=[*("A".."Z")].sample(4).join,0
while b<93750
File.open("f/"+a+b.to_s,"w") {|f| f.write(s) }
b=b+1 
end
end
Dir.mkdir("f")
threads=[]
8.times{
  threads<<Thread.new{j(s)}
}
threads.each(&:join)
'
def j(s)
a,b=[*("A".."Z")].sample(4).join,0
while b<93750
File.open("f/"+a+b.to_s,"w") {|f| f.write(s) }
b=b+1 
end
end
Dir.mkdir("f")
t=[]
8.times{
  t<<Thread.new{j(s)}
}
t.each(&:join)
