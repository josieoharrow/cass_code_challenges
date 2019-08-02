s=%(def j(s)
a,b=rand(999).to_s,0
while b<187500
    f = File.new "b/"+b.to_s+".cr", "w"
    f.puts "s=%("+s+")"+s
    f.close
    b=b+1 
end
end
c = Channel(Nil).new
4.times{
spawn {
    c.send(j(s))
}
c.receive()
}
)
def j(s)
    a,b=rand(999).to_s,0
    while b<187500
        f = File.new "b/"+b.to_s+".cr", "w"
        f.puts "s=%("+s+")"+s
        f.close
        b=b+1 
    end
end
Dir.mkdir("h")
c = Channel(Nil).new
4.times{
    spawn {
        c.send(j(s))
    }
    c.receive()
}