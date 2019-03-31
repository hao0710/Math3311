%a
rng(1);
n=10^3;
c = randn(n,1);
for i=1:5
    fprintf('%1.6e ',c(i,1));
end
fprintf('\n');
%(b)
C=zeros(n,n);
for i=1:n
    for j=1:n
        if (i-j>=0);
            C(i,j)=c(i-j+1);
        else
            C(i,j)=c(i-j+n+1);
end
    end
end
%(c)
          %norm_1=norm(C,1);
tol=10*n*eps
normdiff=norm(C-C',1);
 if normdiff<=tol
    fprintf('The matrix C is symmetric\n');
else
    fprintf('The matrix C is not symmetric\n');
end
%(d)
b=randn(n,1);
x=C\b;
for i=1:5
    fprintf('%1.6e ',x(i,1));
end
fprintf('\n');
%(e)
tic;
x=C\b;
toc;
%(f)
cfft=fft(C(:,1));
bfft=fft(b);
zfft=bfft./cfft;
z=ifft(zfft);
%(g)
tic;
cfft=fft(C(:,1));
bfft=fft(b);
zfft=bfft./cfft;
z=ifft(zfft);
toc;
%(h)
normchk=norm(z-x,Inf)
