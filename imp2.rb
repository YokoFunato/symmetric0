include Math

x0 = 1.0;
v0 = 0.0;

h = ARGV[0].to_f;

eps = 0.25*h*h;

p1eps = 1+eps;

m1eps = 1-eps;

inv_p1eps = 1.0/p1eps;

p h;


x1 = inv_p1eps*((m1eps*x0+h*v0));
v1 = inv_p1eps*((-h*x0+v0*m1eps));

printf("%24.16e %24.16e %24.16e \n", x1,cos(h),cos(h)-x1);

printf("%24.16e %24.16e %24.16e \n", v1,-sin(h),-sin(h)-v1);








