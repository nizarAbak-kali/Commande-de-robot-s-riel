function sortie = AlgoControle(entree)
t = entree(1);
q1 = entree(2);
q2 = entree(3);
qp1 = entree(4);
qp2 = entree(5);
kv = 20;
kp = 100;
f = 2;

p1 = 1.6;
p2 = 0.5;
p3 = 0.6;
p4 = 3.7;
p5 = 1.2;

q1d = sin(2*pi*f*t);
q2d = sin(2*pi*f*t);

q1dp =2*pi*f*cos(2*pi*f*t);
q2dp =2*pi*f*cos(2*pi*f*t);

tau1=q1;
tau2=q2;

qd=[q1d;q2d];
qdp=[q1dp;q2dp];
tau=[tau1;tau2];
        
q=[q1;q2];
qp=[qp1;qp2]; 

tau=[tau1;tau2];
		
e=qd-q;
ep =qdp-qp;

M = [p1+p2+2*p3*cos(q2) p2+p3*cos(q2); p2+p3*cos(q2) p2];
C = 0;
G = [p4*cos(q1)*p5*cos(q1+q2); p5*cos(q1+q2)];

H = C*qp + G;
tau = M*(q2dp+kp*e+kv*ep)+H;
sortie = [tau;qd;qdp];