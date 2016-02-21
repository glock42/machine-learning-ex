function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

c1 = zeros(1,n);
c2 = zeros(1,n);
c3 = zeros(1,n);
a=0;b=0;c=0;
for i =1:m
    if(idx(i)==1)
        c1 = c1+X(i,:);a=a+1;
    elseif (idx(i)==2)
        c2 = c2+X(i,:);b=b+1;
    else
        c3 = c3+X(i,:);c=c+1;
    end
end

c1 = c1/a;
c2=c2/b;
c3=c3/c;

centroids= [c1;c2;c3];
% for i = 1:K
%   centroids(i, :) = sum(X(find(idx == i), :)) / sum(idx == i);
% end
% =============================================================


end

