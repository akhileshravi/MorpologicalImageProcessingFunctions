%% Akhilesh Ravi 16110007

%% Checks if a set A is the subset of another set B
% A, B - input sets
% flag ->   1 if A is a subset of B
%           0 if A is not a subset of B

function flag = is_subset_16110007(A,B)
flag = 1;
for i = 1:size(A,1)    % Going through all entries of A
    row = A(i,:);
    
    % Checking if an entry of A does not exist in B
    if ~( any( sum(B==row,2) == 2) )    
        flag = 0;
        break
    end
    
end