%% Akhilesh Ravi 16110007

%% Complement of a set

% A - The given set
% U - The universal set. By default, it will be the smallest rectangular
%     that will just cover A
% C - Complement of the set A

function C = complement_16110007(A,varargin)

% Finding xmin, xmax, ymin, ymax to create default universal matrix
xmax = max(A(:,1));
xmin = min(A(:,1));
if xmin > 0
    xmin = 0;
end

ymax = max(A(:,2));
ymin = min(A(:,2));
if ymin > 0
    ymin = 0;
end

U = zeros((xmax-xmin+1) * (ymax-ymin+1), 2);

% Creating the default universal matrix
% Default universal matrix: 
%   { (i,j) | xmin <= i <= xmax, ymin <= j <= ymax, i, j are integers}
for i = 1 : xmax-xmin+1
U( (i-1)*(ymax-ymin+1)+1 : i*(ymax-ymin+1), 1 ) = i + xmin - 1;
U( (i-1)*(ymax-ymin+1)+1 : i*(ymax-ymin+1), 2 ) = ymin:ymax;
end

Defaults = {U};     % Setting default inputs
Defaults(1:nargin-1) = varargin;    % Taking input from user

U = cell2mat(Defaults(1));

C = [];
for i = 1:size(U,1)
    row = U(i,:);
    if ~( any( sum(A==row,2) == 2) )
        C = [C; row];   % Adding row to C if row is not in A
    end
end

end