%Inter resonator coupling is corrosponding to m12
%Inner resonator coupling IS corrosponding to ms1 and ml2
w21=[4.6119 4.606 4.6055];
w11=[4.5248 4.425 4.3242];
imy11=[0.001899 0.0016899877 0.001485];
imy21=[0.001325 0.0011622 0.001];
xsquarecoeff=imy11+imy21;
xcoeff=w11.*imy11;
constant=(-1)*imy21.*w21.^2;
r = [0 0 0;0 0 0];
root = [0 0 0];
for i=1:3
p = [xsquarecoeff(i) xcoeff(i) constant(i)];
r(:,i) = roots(p);
if r(1,i)>0
    root(i)=r(1,i);
else
    root(i)=r(2,i);
end
end
gama=imy11.*root.*(w11+root);
m12=root;
ms1=sqrt(gama./root);
m2l=ms1;










