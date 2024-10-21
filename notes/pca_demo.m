%% This script illustrates a few basic features of PCA through examples.
%   MATH 6600 - Methods of Applied Math
%   October 21, 2024
%   PCA in practice 

%% Example: Generate "Bivariate" Gaussian data

% m samples from centered multivariate Gaussian distribution
m = 50;
theta = pi/4;
Q = [cos(theta) -sin(theta); sin(theta) cos(theta)];
sig1 = 2;
sig2 = 0.2;
S = [sig1 0; 0 sig2];
C = Q*S*Q';                                 % covariance matrix
x = mvnrnd([0; 0], C, m)';                  % 50 centered samples

% plot data
figure(1)
x1 = x(1,:); x2 = x(2,:);                   % features 1 and 2
plot(x1,x2,'ok','MarkerFaceColor','k')
scale = 1.5;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
axis equal

%% Compute and plot principle components

% Compute principle components

mu = sum(x,2)/m;                    % compute mean of each row
mu_corr = mu*ones(1,size(x,2));     % form mean correction matrix
B = (x-mu_corr)/sqrt(m-1);          % "center" mean of the data
[U,S,~]=svd(B,'econ');
pc = U'*x;

% plot principle components
figure(2)
pc1 = pc(1,:); pc2 = pc(2,:);       % principle components 1 and 2
plot(pc1,pc2,'ok','MarkerFaceColor','k')
scale = 1.5;
xlim([-scale*max(abs(pc1)), scale*max(abs(pc1))])
ylim([-scale*max(abs(pc2)), scale*max(abs(pc2))])
axis equal

%% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
figure(1)
hold on
plot(t.*U(1,1),t.*U(2,1),':r','LineWidth',2)
plot(s.*U(1,2),s.*U(2,2),':b','LineWidth',2)

%% Example: Generate "Trivariate" Gaussian data

% m samples from centered multivariate Gaussian distribution
m=50;
theta1 = pi/4;
[Q,~] = qr(randn(3));
sig1 = 2;
sig2 = 0.5;
sig3 = 0.1;
S = [sig1 0 0 ; 0 sig2 0 ; 0 0 sig3 ];
C = Q*S*Q';                                 	% covariance matrix
x = mvnrnd([0; 0; 0], C, m)';                   % 50 centered samples

% plot data
figure(1)
x1 = x(1,:); x2 = x(2,:); x3 = x(3,:);       % features 1,2, 3
scatter3(x1,x2,x3,'k','filled')
scale = 1.5;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
%zlim([-scale*max(abs(x3)), scale*max(abs(x3))])
axis equal

%% Compute and plot principle components

% Compute principle components
mu = sum(x,2)/m;                    % compute mean of each row
mu_corr = mu*ones(1,size(x,2));     % form mean correction matrix
B = (x-mu_corr)/sqrt(m-1);          % "center" mean of the data
[U,S,~]=svd(B,'econ');
pc = U'*x;

% plot principle components
figure(2)
pc1 = pc(1,:); pc2 = pc(2,:);       % principle components 1 and 2
plot(pc1,pc2,'ok','MarkerFaceColor','k')
scale = 1.5;
xlim([-scale*max(abs(pc1)), scale*max(abs(pc1))])
ylim([-scale*max(abs(pc2)), scale*max(abs(pc2))])
axis equal

%% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
figure(1)
hold on
scatter3(t.*U(1,1),t.*U(2,1),t.*U(3,1),'r','filled')
scatter3(s.*U(1,2),s.*U(2,2),s.*U(3,2),'b','filled')





