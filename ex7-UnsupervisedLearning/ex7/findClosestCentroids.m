function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% distance = zeros(300,3)
% for i = 1:length(X)
%         distance(i) = norm(X(i,:) - centroids(1,:)).^2;
%         distance(i,2) = norm(X(i,:) - centroids(2,:)).^2;
%         distance(i,3) = norm(X(i,:) - centroids(3,:)).^2;
%         [M,I] = min(distance(i,:));
%         idx(i) = I;
% end
% 


% distance = zeros(300,3);
% for i = 1:length(X)
%     for j = 1:K
%         distance(i,j) = norm(X(i,:) - centroids(j,:)).^2;
%     end
% end
% [M,I] = min(distance,[],2);  
% idx = I;

for i = 1:length(X)
    dist = 100000;
    for j = 1:K
        distance = norm(X(i,:) - centroids(j,:)) ^ 2;
        if distance < dist
            dist = distance;
            idx(i) = j;
        end
    end
end



% =============================================================

end

