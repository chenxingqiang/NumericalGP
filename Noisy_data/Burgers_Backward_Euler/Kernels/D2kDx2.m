function K=D2kDx2(x, y, hyp, i)

logsigma = hyp(1);
logtheta = hyp(2);

n_x = size(x,1);
n_y = size(y,1);

x = x*ones(1,n_y);
y = ones(n_x,1)*y';

if i==0
    
    K = 2.*exp(1).^logtheta.*pi.^(-1).*(1+exp(1).^logsigma+exp(1) ...
        .^logtheta.*x.^2).^(-2).*((1+exp(1).^logsigma+exp(1).^logtheta.* ...
        x.^2).*(1+exp(1).^logsigma+exp(1).^logtheta.*y.^2)).^(-1/2).*(1+ ...
        2.*exp(1).^logsigma+exp(1).^logtheta.*(x.^2+exp(1).^logsigma.*(x+( ...
        -1).*y).^2+y.^2)).^(-1).*(1+(-1).*(1+exp(1).^logsigma+exp(1) ...
        .^logtheta.*x.^2).^(-1).*(exp(1).^logsigma+exp(1).^logtheta.*x.*y) ...
        .^2.*(1+exp(1).^logsigma+exp(1).^logtheta.*y.^2).^(-1)).^(-1/2).*( ...
        (-1).*exp(1).^logsigma.*(1+exp(1).^logsigma).*(1+2.*exp(1) ...
        .^logsigma)+exp(1).^logtheta.*(1+2.*exp(1).^logsigma).*x.*(exp(1) ...
        .^logsigma.*(x+(-3).*y)+(-3).*y)+exp(1).^(2.*logtheta).*x.*(2.* ...
        exp(1).^(2.*logsigma).*(x+(-1).*y).^3+(-3).*x.^2.*y+(-2).*y.^3+2.* ...
        exp(1).^logsigma.*(x+(-2).*y).*(x.^2+(-1).*x.*y+y.^2)));
    
elseif i== 1
    
    K = exp(1).^(logsigma+logtheta).*pi.^(-1).*(1+exp(1).^logsigma+exp(1) ...
        .^logtheta.*x.^2).^(-3).*((1+exp(1).^logsigma+exp(1).^logtheta.* ...
        x.^2).*(1+exp(1).^logsigma+exp(1).^logtheta.*y.^2)).^(-1/2).*(1+ ...
        2.*exp(1).^logsigma+exp(1).^logtheta.*(x.^2+exp(1).^logsigma.*(x+( ...
        -1).*y).^2+y.^2)).^(-2).*(1+(-1).*(1+exp(1).^logsigma+exp(1) ...
        .^logtheta.*x.^2).^(-1).*(exp(1).^logsigma+exp(1).^logtheta.*x.*y) ...
        .^2.*(1+exp(1).^logsigma+exp(1).^logtheta.*y.^2).^(-1)).^(-1/2).*( ...
        3.*exp(1).^(2.*logtheta).*x.*((-2).*((-1)+exp(1).^(2.*logsigma).*( ...
        5+4.*exp(1).^logsigma)).*x.^3+(7+exp(1).^logsigma.*(20+exp(1) ...
        .^logsigma.*(29+26.*exp(1).^logsigma))).*x.^2.*y+(-2).*(1+exp(1) ...
        .^logsigma).*(1+2.*exp(1).^logsigma.*(5+7.*exp(1).^logsigma)).*x.* ...
        y.^2+5.*(1+exp(1).^logsigma).^2.*(1+2.*exp(1).^logsigma).*y.^3)+ ...
        exp(1).^(3.*logtheta).*x.*((10+exp(1).^logsigma.*(13+(-2).*exp(1) ...
        .^logsigma.*(1+3.*exp(1).^logsigma))).*x.^5+6.*(1+exp(1) ...
        .^logsigma).*(1+exp(1).^logsigma.*((-2)+5.*exp(1).^logsigma)).* ...
        x.^4.*y+(-3).*(2+exp(1).^logsigma.*(15+2.*exp(1).^logsigma.*(9+ ...
        10.*exp(1).^logsigma))).*x.^3.*y.^2+10.*(1+exp(1).^logsigma).*(1+ ...
        2.*exp(1).^logsigma+6.*exp(1).^(2.*logsigma)).*x.^2.*y.^3+(-30).* ...
        exp(1).^logsigma.*(1+exp(1).^logsigma).^2.*x.*y.^4+6.*(1+exp(1) ...
        .^logsigma).^3.*y.^5)+exp(1).^(4.*logtheta).*x.^3.*(4.*x.^5+2.* ...
        exp(1).^(2.*logsigma).*(x+(-1).*y).^5+(-3).*x.^4.*y+(-2).*x.^3.* ...
        y.^2+(-5).*x.^2.*y.^3+(-2).*y.^5+2.*exp(1).^logsigma.*(x+(-1).*y) ...
        .^2.*(3.*x.^3+(-1).*x.^2.*y+x.*y.^2+(-2).*y.^3))+2.*exp(1).^(2.* ...
        logsigma).*(3+3.*cosh(logsigma)+sinh(logsigma)).*((-1)+2.*sinh( ...
        logsigma))+exp(1).^logtheta.*((-2).*(1+exp(1).^logsigma).*((-6)+ ...
        exp(1).^logsigma.*((-20)+exp(1).^logsigma.*((-17)+2.*exp(1) ...
        .^logsigma))).*x.*y+exp(1).^logsigma.*(1+exp(1).^logsigma).^2.* ...
        y.^2.*((-5)+4.*sinh(logsigma))+(-2).*exp(1).^(2.*logsigma).*x.^2.* ...
        (17+(-4).*cosh(logsigma).*((-5)+sinh(logsigma))+5.*sinh(logsigma)) ...
        ));
    
elseif i== 2
    
    K = exp(1).^logtheta.*pi.^(-1).*(1+exp(1).^logsigma+exp(1).^logtheta.* ...
        x.^2).^(-3).*((1+exp(1).^logsigma+exp(1).^logtheta.*x.^2).*(1+exp( ...
        1).^logsigma+exp(1).^logtheta.*y.^2)).^(-1/2).*(1+2.*exp(1) ...
        .^logsigma+exp(1).^logtheta.*(x.^2+exp(1).^logsigma.*(x+(-1).*y) ...
        .^2+y.^2)).^(-2).*(1+(-1).*(1+exp(1).^logsigma+exp(1).^logtheta.* ...
        x.^2).^(-1).*(exp(1).^logsigma+exp(1).^logtheta.*x.*y).^2.*(1+exp( ...
        1).^logsigma+exp(1).^logtheta.*y.^2).^(-1)).^(-1/2).*((-2).*exp(1) ...
        .^logsigma.*(1+exp(1).^logsigma).^2.*(1+2.*exp(1).^logsigma).^2+ ...
        exp(1).^logtheta.*(1+exp(1).^logsigma).*(1+2.*exp(1).^logsigma).*( ...
        exp(1).^(3.*logsigma).*(x+(-1).*y).^2+(-12).*x.*y+exp(1) ...
        .^logsigma.*(7.*x.^2+(-36).*x.*y+y.^2)+2.*exp(1).^(2.*logsigma).*( ...
        7.*x.^2+(-13).*x.*y+y.^2))+(-1).*exp(1).^(4.*logtheta).*x.^3.*( ...
        x.^2+exp(1).^logsigma.*(x+(-1).*y).^2+y.^2).*(2.*exp(1).^(2.* ...
        logsigma).*(x+(-1).*y).^3+(-3).*x.^2.*y+(-2).*y.^3+2.*exp(1) ...
        .^logsigma.*(x+(-2).*y).*(x.^2+(-1).*x.*y+y.^2))+exp(1).^(3.* ...
        logtheta).*x.*(6.*exp(1).^(4.*logsigma).*(x+(-1).*y).^5+2.*exp(1) ...
        .^(3.*logsigma).*(x+(-1).*y).^2.*(10.*x.^3+(-16).*x.^2.*y+21.*x.* ...
        y.^2+(-12).*y.^3)+exp(1).^(2.*logsigma).*(7.*x+(-6).*y).*(3.*x.^4+ ...
        (-6).*x.^3.*y+9.*x.^2.*y.^2+(-8).*x.*y.^3+6.*y.^4)+exp(1) ...
        .^logsigma.*(7.*x.^5+(-24).*x.^4.*y+33.*x.^3.*y.^2+(-40).*x.^2.* ...
        y.^3+30.*x.*y.^4+(-24).*y.^5)+(-2).*(3.*x.^4.*y+5.*x.^2.*y.^3+3.* ...
        y.^5))+6.*exp(1).^(2.*(logsigma+logtheta)).*x.*(3+3.*cosh( ...
        logsigma)+sinh(logsigma)).*(3.*x.^3+(-7).*x.^2.*y+8.*x.*y.^2+(-5) ...
        .*y.^3+(3.*x.^3+(-12).*x.^2.*y+8.*x.*y.^2+(-5).*y.^3).*cosh( ...
        logsigma)+x.*(3.*x.^2+(-5).*x.*y+8.*y.^2).*sinh(logsigma)));
    
end

end