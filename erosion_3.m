%% Akhilesh Ravi 16110007

%% Erosion of a set A by another set B (by definition 3 for erosion)
% A - Input set to be eroded
% B - Input set to be used for erosion
% C -> Set A eroded by set B
% C = Intersection of all sets A_b for all b in B

function C = erosion_3_16110007(A,B)
b = B(1,:);
C = translate_16110007(A,-b);
for i = 2:size(B,1)
    b = B(i,:);
    A_b = translate_16110007(A,-b);
    C = intersect_16110007(C,A_b);
end
end