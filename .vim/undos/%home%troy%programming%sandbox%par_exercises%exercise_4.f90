Vim�UnDo� Zf�dB�t8���d��4����z�1��&   3                 M       M   M   M    P���    _�                        	    ����                                                                                                                                                                                                                                                                                                                                                             P��     �         !      	    end_i5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P��-     �         "    �         "          �         !    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P��j     �         $          end_i = N/comm_size)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P��k     �         $      #    begin_i = N/comm_size*my_rank+15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P��m     �         $      $    begin_i = (N/comm_size*my_rank+15�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P��p    �         $          end_i = (N/comm_size)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             P�ΐ    �         &        �         %    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             P�Λ     �         '    �         '        �         &    5�_�      
           	      	    ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    P�Ο     �         )        do i = 0, 10 , 15�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                v       P�Ρ     �         )        do i = begin_i, 10 , 15�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                v       P�Σ     �         )        do i = begin_i, end_i , 15�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ά    �         (             enddo �         )               �         )        do i = begin_i, end_i 5�_�                       -    ����                                                                                                                                                                                                                                                                                                                                                v       P���    �         '      -    begin_i = real(N/comm_size)*(comm_size-2)5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       P�ϧ     �         '      %  vec = (/ (begin_i+i,i=0,end_i-1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�Ϫ     �         '        vec = (/ (b+i,i=0,end_i-1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�Ϫ     �         '        vec = (/ (+i,i=0,end_i-1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ϫ    �         '        vec = (/ (i,i=0,end_i-1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ϯ     �         '      #  vec = (/ (i,i=begin_i,end_i-1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ϰ    �         '      "  vec = (/ (i,i=begin_i,end_i1) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ϵ     �         (    �         (        �         '    5�_�                       	    ����                                                                                                                                                                                                                                                                                                                               	          	       v   	    P���     �         *        do i = 0, 10 , 15�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *        do i = begin_i, 10 , 15�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���    �         *        do i = begin_i, end_i , 15�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���   	 �         *        allocate(vec(begin_i,end_i))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      &  else if(my_rank == comm_size-1) then5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      1    allocate(vec(N/comm_size+mod(N,N/comm_size)))5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      P    vec = (/ (real(N/comm_size)*my_rank+i,i=1,N/comm_size+mod(N,N/comm_size)) /)5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      +    do i = 1, N/comm_size+mod(N,comm_size) 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      "      local_sum = local_sum+vec(i)5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       P���     �         *      
    enddo 5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                v       P���     �          *        else5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                v       P���     �      !   *          allocate(vec(N/comm_size))5�_�   !   #           "   !       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �       "   *      =    vec = (/ (real(N/comm_size)*my_rank+i,i=1,N/comm_size) /)5�_�   "   $           #   "       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   !   #   *          do i = 1, N/comm_size 5�_�   #   %           $   #       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   "   $   *      "      local_sum = local_sum+vec(i)5�_�   $   &           %   $       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   #   %   *      
    enddo 5�_�   %   '           &   %       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   $   &   *        endif 5�_�   &   (           '   '       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   &   (   *      >  write (*,*) "Local sum from",(N/comm_size)*my_rank+1,"to", &5�_�   '   )           (   '       ����                                                                                                                                                                                                                                                                                                                                                v       P���     �   &   (   *      ?  write (*,*) "Local sum from",!(N/comm_size)*my_rank+1,"to", &5�_�   (   *           )   (       ����                                                                                                                                                                                                                                                                                                                                                v       P��   
 �   '   )   *      7               (N/comm_size)*(my_rank+1),"is",local_sum5�_�   )   +           *      '    ����                                                                                                                                                                                                                                                                                                                                                             P��#    �         *      '  integer :: i,j,ierr,my_rank,comm_size5�_�   *   ,           +      +    ����                                                                                                                                                                                                                                                                                                                                                             P�а    �         *      /    begin_i = real(N/comm_size)*(comm_size-2)+15�_�   +   -           ,           ����                                                                                                                                                                                                                                                                                                                                                             P���    �                '  !else if(my_rank == comm_size-1) then   2  !  allocate(vec(N/comm_size+mod(N,N/comm_size)))   Q  !  vec = (/ (real(N/comm_size)*my_rank+i,i=1,N/comm_size+mod(N,N/comm_size)) /)   ,  !  do i = 1, N/comm_size+mod(N,comm_size)    #  !    local_sum = local_sum+vec(i)     !  enddo      !else     !  allocate(vec(N/comm_size))   >  !  vec = (/ (real(N/comm_size)*my_rank+i,i=1,N/comm_size) /)     !  do i = 1, N/comm_size    #  !    local_sum = local_sum+vec(i)     !  enddo    	  !endif      !local_sum = sum(vec)5�_�   ,   .           -      /    ����                                                                                                                                                                                                                                                                                                                                                             P���     �               O  write (*,*) "Local sum from",begin_i,"to", & !(N/comm_size)*my_rank+1,"to", &5�_�   -   /           .      $    ����                                                                                                                                                                                                                                                                                                                                                             P���    �               M               end_i,"is",local_sum !(N/comm_size)*(my_rank+1),"is",local_sum5�_�   .   0           /      #    ����                                                                                                                                                                                                                                                                                                                                                             P���     �                              �             5�_�   /   1           0           ����                                                                                                                                                                                                                                                                                                                                                             P���     �             �                5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                         	       v   	    P���     �                 if(count < max) then5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                v       P���     �                 if(my_rank < max) then5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                v       P���     �                 if(my_rank == max) then5�_�   3   5           4           ����                                                                                                                                                                                                                                                                                                                                                v       P��     �             �                    do5�_�   4   6           5          ����                                                                                                                                                                                                                                                                                                                                                v       P��     �         !          do i = 0, 10 , 15�_�   5   7           6          ����                                                                                                                                                                                                                                                                                                                                                v       P��	     �         !          do i = 1, 10 , 15�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                v       P��     �         !          do i = 1, comm_size , 15�_�   7   9           8           ����                                                                                                                                                                                                                                                                                                                                                v       P��     �      %   !    �                      mpirec5�_�   8   :           9          ����                                                                                                                                                                                                                                                                                                                                                v       P��;     �         (                          count, &5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                         <       v   <    P��>     �          (      @                    MPI_INTEGER/MPI_REAL/MPI_DOUBLE_PRECISION, &5�_�   :   <           ;           ����                                                                                                                                                                                                                                                                                                                                                  v       P��M     �      !   (                          from, &5�_�   ;   =           <   !       ����                                                                                                                                                                                                                                                                                                                            !          !          v       P��N     �       "   (                          my_tag, &5�_�   <   >           =   $       ����                                                                                                                                                                                                                                                                                                                            $          $          v       P��Y     �   #   %   (                          ierr)5�_�   =   ?           >          ����                                                                                                                                                                                                                                                                                                                            $          $          v       P��\     �      	   )    �      	   )        �      	   (    5�_�   >   @           ?   	   '    ����                                                                                                                                                                                                                                                                                                                            %          %          v       P��e    �      
   )      '  real(kind = kind(0.0D0)) :: local_sum5�_�   ?   A           @   %       ����                                                                                                                                                                                                                                                                                                                            %          %          v       P��l    �   %   '   *                          �   %   '   )    5�_�   @   B           A   '   	    ����                                                                                                                                                                                                                                                                                                                            %          %          v       P��y     �   )   0   ,    �   (   *   ,          �   (   *   +    �   '   )   +          �   '   )   *    5�_�   A   C           B   )       ����                                                                                                                                                                                                                                                                                                                            )          )          v       P�х     �   (   *   2          call mpi_send(buffer, &5�_�   B   D           C   *       ����                                                                                                                                                                                                                                                                                                                            *          *          v       P�ц     �   )   +   2                   count, &5�_�   C   E           D   +       ����                                                                                                                                                                                                                                                                                                                            +          +   5       v   5    P�ш     �   *   ,   2      9             MPI_INTEGER/MPI_REAL/MPI_DOUBLE_PRECISION, &5�_�   D   F           E   ,       ����                                                                                                                                                                                                                                                                                                                            ,          ,          v       P�э     �   +   -   2                   to, &5�_�   E   G           F   -       ����                                                                                                                                                                                                                                                                                                                            -          -          v       P�э     �   ,   .   2                   my_tag, &5�_�   F   H           G   "       ����                                                                                                                                                                                                                                                                                                                            /          /          v       P�ї     �   !   #   2                          i, &5�_�   G   I           H   0       ����                                                                                                                                                                                                                                                                                                                            /          /          v       P�ћ     �   1   2   3    �   0   2   3        �   0   2   2    5�_�   H   J           I   1       ����                                                                                                                                                                                                                                                                                                                            1          1          v       P�џ    �   0   2   3        write (*,*) 5�_�   I   K           J   '        ����                                                                                                                                                                                                                                                                                                                                                             P���     �   (   )   4    �   '   )   4          �   '   )   3    5�_�   J   L           K   (       ����                                                                                                                                                                                                                                                                                                                            (          (          v       P���     �   '   )   4          write (*,*) 5�_�   K   M           L          ����                                                                                                                                                                                                                                                                                                                            (          (          v       P���     �         4          do i = 1, comm_size 5�_�   L               M   2       ����                                                                                                                                                                                                                                                                                                                            (          (          v       P���    �   1   2          $  write (*,*) "Total sum:",local_sum5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       P�ϣ     �              5��