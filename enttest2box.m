for i=1:1e3
    h=rand;
    s=sqrt(h);
    eh = -h*log2(h) - (1-h)*log2(1-h);
    s=s/(sqrt(h)+sqrt(1-h));
    es = -s*log2(s) - (1-s)*log2(1-s);
    if(es < eh)
        fprintf('counter example found.\n');
    end
end