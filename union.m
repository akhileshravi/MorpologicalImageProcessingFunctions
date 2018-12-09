%% Akhilesh Ravi 16110007

%% Union of two sets
% A, B - Input sets
% C -> union of sets A and B

function C = union_16110007(A,B)

C = B; % Now, C has all entries of B
for i = 1:size(A,1)
    
    row = A(i,:);
    if ~( any( sum(B==row,2) == 2) )
        C = [C; A(i,:)]; % All entries of A that are not in B are added
            % The ones that are in A and B are not added here so as to
            % avoid repetitions
    end
    
end
end