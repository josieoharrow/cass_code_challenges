
@s='def j(); a,b=[*("A".."Z")].sample(3).join,0; while b<1; File.open("h/"+a+b.to_s,"w") {|f| f.write(@s) }; b=b+1; end end; Dir.mkdir("h"); t=[]; 4.times{t<<Thread.new{j()}}; t.each(&:join)'

instance_eval(@s)

#
#(/.*/)=~'def j(); a,b=[*("A".."Z")].sample(3).join,0; while b<1; File.open("h/"+a+b.to_s,"w") {|f| f.write($~[0]) }; b=b+1; end end; Dir.mkdir("h"); t=[]; 4.times{t<<Thread.new{j()}}; t.each(&:join)'

#eval($~[0])

#(/.*/)=~'def j(s); a,b=[*("A".."Z")].sample(3).join,0; while b<1; File.open("h/"+a+b.to_s,"w") {|f| f.write(s) }; b=b+1; end end; Dir.mkdir("h"); t=[]; 4.times{t<<Thread.new{j($&)}}; t.each(&:join)'

#instance_eval($&)