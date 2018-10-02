n = 1000;

for i=1:5000
    H = 1.1.^randi(i+60,1,n); H = H / sum(H);
    S = sqrt(H); S = S / sum(S);
    
    lidx = find(H <= 1/n);
    uidx = setdiff(1:n,lidx);

    H_d(lidx) = sum(H(lidx))/length(lidx);
    H_d(uidx) = sum(H(uidx))/length(uidx);
    
    S_d = sqrt(H_d); S = S / sum(S);
    
    A(i,1) = sum(H ./ S) - 1;
    A(i,2) = sum(H_d ./ S_d) - 1;
end

scatter(A(:,1)/max(A(:,1)),A(:,2)/max(A(:,2)),20,'b','+');
xlabel('Normalised E[Z] for H and its S*');
ylabel('Normalised E[Z] for Step H and its S*');
grid on;
box on;