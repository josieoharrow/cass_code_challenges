k = 'p "here"'

s='
def j(s)
a,b=[*("A".."Z")].sample(4).join,0
while b<187500
File.open("h/"+a+b.to_s,"w") {|f| f.write(s) }
b=b+1 
end
end
Dir.mkdir("h")
threads=[]
4.times{
  threads<<Thread.new{j(s)}
}
threads.each(&:join)
'

eval(k)
eval(s)
p 'teeee'
def j(s)
a,b=[*("A".."Z")].sample(3).join,0
while b<1#87500
File.open("h/"+a+b.to_s,"w") {|f| f.write("s='"+s+"'"+s) }
b=b+1 
end
end
Dir.mkdir("h")
t=[]
4.times{
  t<<Thread.new{j(s)}
}
t.each(&:join)
