%Inter resonator coupling is corrosponding to m12
%Inner resonator coupling IS corrosponding to ms1 and ml2
w21=[3.56 3.5154 4.1];
w11=[2.117 5.305 3.9];
imy11=[0.004584 -0.00018554 0.0044];
imy21=[0.01543 0.03 0.0040];
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










