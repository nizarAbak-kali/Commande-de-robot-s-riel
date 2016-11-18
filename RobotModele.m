function sortie = RobotModele(entree)
tau1 = entree(1);
tau2 = entree(2);
q1 = entree(3);
q2 = entree(4);
q1p = entree(5);
q2p = entree(6);

p1 = 1.6;
p2 = 0.5;
p3 = 0.6;
p4 = 3.7;
p5 = 1.2;

M = [p1+p2+2*p3*cos(q2) p2+p3*cos(q2); p2+p3*cos(q2) p2];
C = [-p3*q2p*sin(q2) -p3*(q1p+q2p)*sin(q2); p3*q1p*sin(q2) 0];
G = [p4*cos(q1)*p5*cos(q1+q2); p5*cos(q1+q2)];

q2p = inv(M)*([tau1;tau2]-C*[q1p;q2p]-G);
sortie = q2p;