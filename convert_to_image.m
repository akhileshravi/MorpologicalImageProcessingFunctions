function I = convert_to_image(A)

%Converts image from set form to matrix form
%Assuming the center (0,0) to be at I(1,1)
xmax = max(A(:,1))+1;
ymax = max(A(:,1))+1;
I = zeros(xmax,ymax);
for i = 1:size(A,1)
    x = A(i,1);
    y = A(i,2);
    I(x+1, y+1) = 1;
end
end