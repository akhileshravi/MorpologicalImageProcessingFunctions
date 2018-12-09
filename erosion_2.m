%% Akhilesh Ravi 16110007

%% Erosion of a set A by another set B (by definition 2 for erosion)
% A - Input set to be eroded
% B - Input set to be used for erosion
% C -> Set A eroded by set B
% C = { z | z + b is an entry of A for all b in B}

function C = erosion_2_16110007(A,B)

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
        flag = 1;
        for k = 1:size(B,1)
            b = B(k,:);
            row = b + z;
            if ~( any( sum(A==row,2) == 2) )
                flag = 0;
                break;
            end
        end
        if flag
            C = [C; z];
        end
    end
end
end