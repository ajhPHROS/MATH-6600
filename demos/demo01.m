%% Compute best L^2 approximations in Chebfun
%
%   1. Best L^2 fit via QR quasimatrix decomposition
%   2. Monomial basis versus Legendre basis

%% Define and plot Runge function in Chebfun

x = chebfun('x');           % set independent variable in Chebfun
f = 1./(1+20*x.^2);         % define rational bell curve (Runge function)

figure(1)
plot(f,'LineWidth',2)       % plot bell curve

%% Dictionary of monomials

N = 5;                      % dictionary degree
E = x.^(0:N);               % dictionary of monomials deg <= N

figure(2)                   % plot dictionary
plot(E,'LineWidth',2)

%% Best L^2 approximation of f by linear combination of N monomials

[Q,R] = qr(E);	% get orthonormal basis for col(E)
c = R \ (Q'*f); % project RHS and solve for coeffs

figure(1)       % plot L^2-best degree N polynomial fit to Bell curve
hold on
plot(E*c,'LineWidth',2), hold off

%% plot pointwise error

figure(3)
semilogy(abs(f-E*c),'LineWidth',2)  % plot pointwise error on [-1 1]

%% Plot L^2 error as dictionary is refined (N increases)

indx = 10:10:800;
err = zeros(size(indx));
cnr = zeros(size(indx));
for j = 1:length(indx)
    E = x.^(0:j);
    [Q,R] = qr(E);
    c = R \ (Q'*f);
    err(j) = norm(f-E*c);
    cnr(j) = cond(E'*E);    % try cond(R) instead! Can you explain what you see?
end

figure(4)
semilogy(indx,err,'ok','MarkerSize',10)
ylim([1e-10 1])

figure(5)
semilogy(indx,cnr,'ok','MarkerSize',10)

%% Dictionary of Legendre polynomials

N = 5;
E = legpoly(0:N);

figure(6)
plot(E,'LineWidth',2)

%% Approximate f by linear combination of N Legendre polynomials

[Q,R] = qr(E);
c = R \ (Q'*f);

figure(7)
plot(f,'LineWidth',2), hold on
plot(E*c,'LineWidth',2)
hold off

%% plot pointwise error

figure(6)
semilogy(abs(f-E*c),'LineWidth',2)  % plot pointwise error on [-1 1]

%% Plot L^2 error as dictionary is refined (N increases)

indx = 10:10:800;
err = zeros(size(indx));
for j = 1:length(indx)
    E = legpoly(0:j);
    [Q,R] = qr(E);
    c = R \ (Q'*f);
    err(j) = norm(f-E*c);
end
figure(8)
semilogy(indx,err,'ok','MarkerSize',10)
ylim([1e-10 1])