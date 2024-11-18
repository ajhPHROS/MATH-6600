%% Bessel function J

% plot Jn on [0 100]
n = 3/2;
Jn = chebfun(@(x) besselj(n,x),[0 100],'splitting','on');
figure(1), plot(Jn,'LineWidth',2), grid on
title('Bessel function')

% plot roots on graph
r = roots(Jn);
hold on, plot(r,Jn(r),'.k')

%% Scaled Bessel function

% compute roots of Jn on [0 100]
n = 4;
Jn = chebfun(@(x) besselj(n,x),[0 100],'splitting','on');
r = roots(Jn);

% scale domain [0 r(k)] -> [0 1]
k = 6;
Jk = chebfun(@(x) besselj(n,r(k)*x),[0 1],'splitting','on');
figure(2), plot(Jk,'LineWidth',2), grid on, hold on
title('Bessel function')

%% Eigenfunctions of Laplacian on Disk

u = diskfun.harmonic(2,1);
plot(u), axis off
title('Eigenfunction (4,1)')