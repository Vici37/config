Vim�UnDo� ��1�ݢM�~�r��e���v"�DW]pm~~   '                                   Q*��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Q*��    �               �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Q*��     �                  5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             Q*��    �   &   (           end�   %   '          R   puts Unpickler.new.load(open(banner)).map{|row|row.inject(""){|r,(k,v)|r+=k*v}}�   $   &             banner = ARGV.first�   #   %          ' if $0 == __FILE__ and ARGV.length == 1�   "   $           �   !   #           end�       "             end�      !               end�                 
       end�                         return @stack.pop�                       when "."�                /         @stack << @memo[stream.readline.chomp]�                       when "g"�                3         @memo[stream.readline.chomp] = @stack.last�                       when "p"�                (        v = @stack.pop; @stack.last << v�                5       when "a" # e.g) ... [ [ ],1,2 ] => [ [ 1, 2] ]�                         @stack << @mark�                       when "("�                6         @stack[marker..-1] = [ @stack[marker+1..-1] ]�                C       when "t", "l" # e.g) ... [ 1,2,MARKER,3,4 ] => [ 1,2,[3,4] ]�                .         @stack << eval(stream.readline.chomp)�                       when "S"�                -         @stack << stream.readline.chomp.to_i�                       when "I"�                       case stream.getc.chr�                     loop do�                   def load(stream)�   
              �   	                end�      
               @stack.rindex @mark�      	             def marker�                 �                   end�                .     @mark, @memo, @stack = Object.new, {}, []�                   def initialize�                 class Unpickler5��