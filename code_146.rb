s='
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
'
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
