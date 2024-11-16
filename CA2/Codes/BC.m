function [p1,q1,pr,qr]=BC(x1,u1,xr,ur,t)
p1=u1;
q1=0;
pr=ur-50;
qr=0;
end