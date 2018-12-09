%% Akhilesh Ravi 16110007

%% Intersection of two sets A and B
% A, B - Input sets
% C - Intersection of A and B

function C = intersect_16110007(A,B)
C = [];
for i = 1:size(A,1)     % Going through all entries of A
    row = A(i,:);
    if ( any( sum(B==row,2) == 2) )
        C = [C; A(i,:)]; % Adding the entry only if it is in A and B both
    end
end