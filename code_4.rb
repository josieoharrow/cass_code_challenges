s='
def j(s)
a,b=[*("A".."Z")].sample(4).join,0
while b<187500
File.open("f/"+a+b.to_s,"w") {|f| f.write(s) }
b=b+1 
end
end
Dir.mkdir("f")
threads=[]
4.times{
  threads<<Thread.new{j(s)}
}
threads.each(&:join)
'
def j(s)
a,b=[*("A".."Z")].sample(4).join,0
while b<187500
File.open("f/"+a+b.to_s,"w") {|f| f.write(s) }
b=b+1 
end
end
Dir.mkdir("f")
t=[]
4.times{
  t<<Thread.new{j(s)}
}
t.each(&:join)
