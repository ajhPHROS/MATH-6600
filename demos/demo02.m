%% Compare Interpolants and L^2-Best Fit in Chebfun
%
%   1. Best L^2 fit via QR quasimatrix decomposition
%   2. Interpolation via Vandermonde system

%% Define and plot Runge function in Chebfun

x = chebfun('x');           % set independent variable in Chebfun
f = 1./(1+20*x.^2);         % define rational bell curve (Runge function)

figure(1)
plot(f,'LineWidth',2)       % plot bell curve

%% Dictionary of monomials

N = 5;                          % dictionary degree
E = x.^(0:N);                   % dictionary of monomials deg <= N
xgrid = linspace(-1,1,N+1).';   % grid of equally spaced points
%xgrid = legpts(N+1);            % grid of Legendre points

figure(2)                       % plot dictionary
plot(E,'LineWidth',2)
hold on,
plot(xgrid,E(xgrid),'ok','MarkerSize',10)

%% Best L^2 approximation of f by linear combination of N monomials

% best L^2 approx
[Q,R] = qr(E);              % get orthonormal basis for col(E)
c1 = R \ (Q'*f);            % project RHS and solve for coeffs of best fit

% interpolation
c2 = E(xgrid) \ f(xgrid);   % solve for interpolant coeffs

figure(1)       % plot fits to bell curve
hold on
plot(E*c1,'LineWidth',2)
plot(E*c2,'--','LineWidth',2)
plot(xgrid,E(xgrid)*c2,'ok','MarkerSize',10)

%% plot pointwise error

figure(3)
semilogy(abs(f-E*c1),'LineWidth',2)  % plot pointwise error on [-1 1]
hold on,
semilogy(abs(f-E*c2),'LineWidth',2)

%% Plot L^2 error as dictionary is refined (N increases)

indx = 10:10:800;
err1 = zeros(size(indx));
err2 = zeros(size(indx));
%cnr = zeros(size(indx));
for j = 1:length(indx)
    E = x.^(0:j);
    xgrid = linspace(-1,1,j+1).';       % equally spaced points
    %xgrid = legpts(j+1);                % Legendre points
    [Q,R] = qr(E);
    c1 = R \ (Q'*f);
    c2 = E(xgrid) \ f(xgrid);
    err1(j) = norm(f-E*c1);
    err2(j) = norm(f-E*c2);
end

figure
semilogy(indx,err1,'o','MarkerSize',10)
hold on
semilogy(indx,err2,'o','MarkerSize',10)
ylim([1e-10 1e10])