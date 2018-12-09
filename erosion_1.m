%% Akhilesh Ravi 16110007

%% Erosion of a set A by another set B (by definition 1 for erosion)
% A - Input set to be eroded
% B - Input set to be used for erosion
% C -> Set A eroded by set B
% C = { z | B_z is a subset of A}

function C = erosion_1_16110007(A,B)
xmin = min(A(:,1));
xmin = min(xmin, 0);
ymin = min(A(:,2));
ymin = min(ymin, 0);

xmax = max(A(:,1));
ymax = max(A(:,2));

C = [];
for i = xmin:xmax
    for j = ymin:ymax
        z = [i, j];
        Bz = translate_16110007(B,z);
        if is_subset_16110007(Bz, A)
            C= [C; z];
        end
    end
end
end