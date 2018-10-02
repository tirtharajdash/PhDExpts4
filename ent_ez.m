n = 1e3;
for i = 1:500
    H = 1.1.^randi(i,1,n); 
    H = H / sum(H); 
    
    %optimal seeker
    S = sqrt(H); 
    S = S / sum(S);
    
    A(i,1) = sum(-H.*log2(H))/log2(n);
    A(i,2) = sum(-S.*log2(S))/log2(n);
    
    B(i,1) = sum(-H.*log2(H))/log2(n);
    B(i,2) = sum(H ./ S)-1;    
end
scatter(A(:,1),A(:,2),20,'b','+');
%scatter(B(:,1),B(:,2)/max(B(:,2)),20,'b','+');
hold on;

n = 1e4;
for i = 1:500
    H = 1.1.^randi(i,1,n); 
    H = H / sum(H); 
    
    %optimal seeker
    S = sqrt(H); 
    S = S / sum(S);
    
    A(i,1) = sum(-H.*log2(H))/log2(n);
    A(i,2) = sum(-S.*log2(S))/log2(n);
    
    B(i,1) = sum(-H.*log2(H))/log2(n);
    B(i,2) = sum(H ./ S)-1;    
end
scatter(A(:,1),A(:,2),20,'r','+');
%scatter(B(:,1),B(:,2)/max(B(:,2)),20,'r','+');
hold on;

n = 1e5;
for i = 1:500
    H = 1.1.^randi(i,1,n); 
    H = H / sum(H); 
    
    %optimal seeker
    S = sqrt(H); 
    S = S / sum(S);
    
    A(i,1) = sum(-H.*log2(H))/log2(n);
    A(i,2) = sum(-S.*log2(S))/log2(n);
    
    B(i,1) = sum(-H.*log2(H))/log2(n);
    B(i,2) = sum(H ./ S)-1;    
end
scatter(A(:,1),A(:,2),20,'g','+');
%scatter(B(:,1),B(:,2)/max(B(:,2)),20,'g','+');
hold on;

n = 1e6;
for i = 1:500
    H = 1.1.^randi(i,1,n); 
    H = H / sum(H); 
    
    %optimal seeker
    S = sqrt(H); 
    S = S / sum(S);
    
    A(i,1) = sum(-H.*log2(H))/log2(n);
    A(i,2) = sum(-S.*log2(S))/log2(n);
    
    B(i,1) = sum(-H.*log2(H))/log2(n);
    B(i,2) = sum(H ./ S)-1;    
end
scatter(A(:,1),A(:,2),20,'k','+');
%scatter(B(:,1),B(:,2)/max(B(:,2)),20,'k','+');
hold on;

legend('n = 10^3','n = 10^4','n = 10^5','n = 10^6')
grid on
box on
