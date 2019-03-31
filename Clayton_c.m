%this function calculate the probability deensity,
%input u as a figure or a matrix and the figure or element of 
%matrix should be in the interval(0,1]
%theta should be a number bigger than 0
function c = Clayton_c(u,theta)
if theta <= 0
   error('theta should be larger than 0, please check your inputt');
    return;
end           
[m,d]=size(u);
if(m==1)
     c1=1;c2=1;c3=1-d;
     for j=1:d    
        c1=c1*(1+theta*(j-1));
        c2=c2*(u(1,j)^(-1-theta));
        c3=c3+(u(1,j)^(-theta));
     end
     c=c1*c2*c3^(-d-1/theta);
end
if(m>1)
    c=zeros(m,1);
    for i=1:m
        c1=1;c2=1;c3=1-d;
        for j=1:d              
            c1=c1*(1+theta*(j-1));
            c2=c2*(u(i,j)^(-1-theta));
            c3=c3+(u(i,j)^(-theta));
        end
        c(i,1)=c1*c2*c3^(-d-1/theta);
    end
end

 


