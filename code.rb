s='
t=Time.now
def j(s)
b = 0
while b<150000
f=File.open("f/"+rand.to_s,"w")
f.puts("s='"+s+"'"+s)
f.close
b=b+1 
end
end
Dir.mkdir("f")
threads=[]
7.times{
  threads<<Thread.new{j(s)}
}
threads.each(&:join)
p(Time.now-t)
'
t=Time.now
def j(s)
b = 0
while b<10000
f=File.open("f/"+rand.to_s,"w")
f.puts("s='"+s+"'"+s)
f.close
b=b+1 
end
end
Dir.mkdir("f")
threads=[]
75.times{
  threads<<Thread.new{j(s)}
}
threads.each(&:join)
p(Time.now-t)