%% This script illustrates a few basic features of PCA through examples.
%   MATH 6600 - Methods of Applied Math
%   December 5, 2025
%   Principle Component Analysis 

%% Example 1: Generate "Bivariate" Gaussian data

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

% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
figure(1)
hold on
plot(t.*U(1,1),t.*U(2,1),':r','LineWidth',2)
plot(s.*U(1,2),s.*U(2,2),':b','LineWidth',2)

%% Example 2: Generate "Trivariate" Gaussian data

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

% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
%r = -1:0.01:1/norm(U(:,1));
figure(1)
hold on
scatter3(t.*U(1,1),t.*U(2,1),t.*U(3,1),'r','filled')
scatter3(s.*U(1,2),s.*U(2,2),s.*U(3,2),'b','filled')
%scatter3(r.*U(1,3),r.*U(2,3),r.*U(3,3),'g','filled')

%% Example 3: Noisy data along a linear manifold
clear

% m samples from noisy linear model
m=50;
xx = randn(1,m);
slope = 0.5;
noise = 0.25;
yy = slope*xx + noise*randn(1,m);
xnc = [xx; yy];                     % 50 samples
x = xnc - mean(xnc,2);              % 50 centered samples

% plot data
figure(1)
x1=x(1,:); x2=x(2,:);
plot(x1,x2,'ok','MarkerFaceColor','k')
scale = 1.25;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
axis equal

% compute principle components
mu = mean(x,2);                     % compute mean of each row
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

% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
figure(1)
hold on
plot(t.*U(1,1),t.*U(2,1),':r','LineWidth',2)
plot(s.*U(1,2),s.*U(2,2),':b','LineWidth',2)

% plot projections of data onto first principle axis ("de-noise")
x_clean = U(:,1)*U(:,1)'*x;
figure(1)
hold on
plot(x_clean(1,:),x_clean(2,:),'or','MarkerFaceColor','r')

%% Example 4: Noisy data along a nonlinear manifold
clear

% m samples from  multivariate Gaussian distribution
m=50;
noise = 0.1;
theta = 2*pi*rand(1,m);
xx = cos(theta) + noise*randn(1,m);
yy = sin(theta) + noise*randn(1,m);
xnc = [xx; yy];                     % 50 samples
x = xnc - mean(xnc,2);              % 50 centered samples

% plot data
figure(1)
x1=x(1,:); x2=x(2,:);
plot(x1,x2,'ok','MarkerFaceColor','k')
scale = 1.25;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
axis equal

% compute principle components
mu = mean(x,2);                     % compute mean of each row
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

% plot eigenvectors on original data
t = -4:0.01:4/norm(U(:,1));
s = -2:0.01:2/norm(U(:,1));
figure(1)
hold on
plot(t.*U(1,1),t.*U(2,1),':r','LineWidth',2)
plot(s.*U(1,2),s.*U(2,2),':b','LineWidth',2)

% plot projections of data onto first principle axis ("de-noise")
x_clean = U(:,1)*U(:,1)'*x;
figure(1)
hold on
plot(x_clean(1,:),x_clean(2,:),'or','MarkerFaceColor','r')

%% Example 5: Noisy data along a nonlinear manifold (kPCA)
clear

% m samples from  multivariate Gaussian distribution
m = 50;
r = 1;
noise = 0.1;
theta = 2*pi*rand(1,m);
xx = r*cos(theta) + noise*randn(1,m);
yy = r*sin(theta) + noise*randn(1,m);
xnc = [xx; yy];                     % 50 samples
x = xnc - mean(xnc,2);              % 50 centered samples

% plot data
figure(1)
x1=x(1,:); x2=x(2,:);
plot(x1,x2,'ok','MarkerFaceColor','k')
scale = 1.25;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
axis equal

% compute kernel principle components
sig = 1;
k = @(x,y) exp(-0.5*norm(x-y).^2/sig^2);      % kernel 1
%k = @(x,y) (1 + dot(x,y))^2;        % kernel 2
KK = zeros(m);
for j = 1:m
    for l = 1:m
    KK(l,j) = k(x(:,l),x(:,j));
    end
end
M = ones(m)/m;
K = KK - M*KK - KK*M + M*KK*M;      % Gram matrix for centered data
[U,S,~]=svd(K/m);                   % eigenpairs of Gram matrix
UU = U / diag(sqrt(diag(S)));       % normalize eigenvectors
pc = UU'*K;                         % principle components of data


% plot leading principle components
figure(2)
pc1 = pc(1,:); pc2 = pc(2,:);       % principle components 1 and 2
plot(pc1,pc2,'ok','MarkerFaceColor','k')
scale = 1.5;
xlim([-scale*max(abs(pc1)), scale*max(abs(pc1))])
ylim([-scale*max(abs(pc2)), scale*max(abs(pc2))])
axis equal

%% Example 6: clustering data along nonlinear manifolds (kPCA)
clear

% m samples from  multivariate Gaussian distribution
m1 = 50;
r1 = 10;
noise1 = 1;
theta1 = 2*pi*rand(1,m1);
xx1 = r1*cos(theta1) + noise1*randn(1,m1);
yy1 = r1*sin(theta1) + noise1*randn(1,m1);
xnc1 = [xx1; yy1];              	% 50 samples from noisy model 1

% m samples from  multivariate Gaussian distribution
m2 = 50;
r2 = 1;
noise2 = 0.1;
theta2 = 2*pi*rand(1,m2);
xx2 = r2*cos(theta2) + noise2*randn(1,m2);
yy2 = r2*sin(theta2) + noise2*randn(1,m2);
xnc2 = [xx2; yy2];                  % 50 samples from noisy model 2

% collect and center all data
m = m1 + m2;
xnc = [xnc1 xnc2];
x = xnc - mean(xnc,2);              % 50 centered samples

% plot data
figure(1)
x1=x(1,:); x2=x(2,:);
plot(x1(1:m1),x2(1:m1),'ok','MarkerFaceColor','k')
hold on
plot(x1(m1+1:end),x2(m1+1:end),'or','MarkerFaceColor','r')
scale = 1.25;
xlim([-scale*max(abs(x1)), scale*max(abs(x1))])
ylim([-scale*max(abs(x2)), scale*max(abs(x2))])
axis equal

% compute kernel principle components
sig = 5;
k = @(x,y) exp(-0.5*norm(x-y).^2/sig^2);      % kernel 1
%k = @(x,y) (1 + dot(x,y))^2;        % kernel 2
KK = zeros(m);
for j = 1:m
    for l = 1:m
    KK(l,j) = k(x(:,l),x(:,j));
    end
end
M = ones(m)/m;
K = KK - M*KK - KK*M + M*KK*M;      % Gram matrix for centered data
[U,S,~]=svd(K/m);                   % eigenpairs of Gram matrix
UU = U / diag(sqrt(diag(S)));       % normalize eigenvectors
pc = UU'*K;                         % principle components of data


% plot leading principle components
figure(2)
pc1 = pc(1,:); pc2 = pc(2,:);       % principle components 1 and 2
plot(pc1(1:m1),pc2(1:m1),'ok','MarkerFaceColor','k')
hold on
plot(pc1(m1+1:end),pc2(m1+1:end),'or','MarkerFaceColor','r')
scale = 1.5;
xlim([-scale*max(abs(pc1)), scale*max(abs(pc1))])
ylim([-scale*max(abs(pc2)), scale*max(abs(pc2))])
axis equal

