function C = set_diff_16110007_old(A,B)
C = [];
for i = 1:size(A,1)
    %if sum(  any(B == A(i,:))  ) ~= 2
    %[tf,loc]=intersect(B,A(i,:),'rows');
    %if size(loc) == [0 1]
    
    row = A(i,:);
    if ~( any( sum(B==row,2) == 2) )
        
        C = [C; row];
    end
end
end