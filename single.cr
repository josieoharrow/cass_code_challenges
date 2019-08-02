s=%(
Dir.mkdir("b")
b=0
while b<750000
    f = File.new "b/"+b.to_s+".cr", "w"
    f.puts "s=%("+s+")"+s
    f.close
    b=b+1 
end
)
Dir.mkdir("b")
b=0
while b<750000
    f = File.new "b/"+b.to_s+".cr", "w"
    f.puts "s=%("+s+")"+s
    f.close
    b=b+1
end