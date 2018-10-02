n = 100;

H = 1.1.^randi(60,1,n); H = H / sum(H);

S = sqrt(H); S = S / sum(S);

lidx = find(H <= 1/n);
uidx = setdiff(1:n,lidx);

H_d(lidx) = sum(H(lidx))/length(lidx);
H_d(uidx) = sum(H(uidx))/length(uidx);

[~,sidx] = sort(H);
plot(sort(H));
hold on;
plot(H_d(sidx),'r');
grid on;
box on;
xlabel('Boxes (n)');
ylabel('Probability');
legend('H','Step approximation to H')