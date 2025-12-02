% Illustrate SVD of a Hilbert-Schmidt kernel in Chebfun2

ell = 0.2;
dom = [-1 1 -1 1];
k = chebfun2(@(x,y) exp(-(x-y).^2 ./ ell.^2), dom);
%k = chebfun2(@(x,y) exp(-(x.^2-y).^2 ./ ell.^2), dom);

figure(1)
plot(k)

%% plot singular values of kernel k(x,y)

[U,S,V] = svd(k);

figure(2)
semilogy(diag(S),'ok')

%% plot singular vectors of kernel k(x,y)

j = 1;          % singular vector index
figure(3)
plot(U(:,j),'LineWidth',2)
hold on
plot(V(:,j),'--','LineWidth',2)

