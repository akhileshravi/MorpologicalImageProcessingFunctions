%% Akhilesh Ravi 16110007

%% Set Difference
% A, B - Input sets
% C -> Set difference, A-B

function C = set_diff_16110007(A,B)
C = [];
for i = 1:size(A,1)

    row = A(i,:);
    if ~( any( sum(B==row,2) == 2) )
        
        C = [C; row];   %Adding all rows from A to C if they are not in B
    end
end
end