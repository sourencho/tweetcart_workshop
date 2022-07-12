p={}n=64w=128r=rnd
for i=0,n do p[i]={x=r(w),y=r(w),a=r(2)-1,b=r(2)-1}end
function _draw()cls()for i=0,n do
a=p[i]u=a.x v=a.y a.x=(u+a.a)%w a.y=(v+a.b)%w
for j=i,n do
b=p[j]x=u-b.x y=v-b.y d=sqrt(x*x+y*y)if(d<20)then line(u,v,b.x,b.y,d<13 and 12or 1)end end
circ(u,v,1,7)end
end