1;

disp("Octave solutions to dec 17, 2002 final exam for MIT 18.06 (paper from appendix of G Strang's Intro to Linear Algebra)")

disp("--------------------------------")
disp("Q1 a")
A = [1,1,1,1,1,1;2,1,1,1,1,1;2,2,1,1,1,1;2,2,2,1,1,1]
[L, U] = lu(A)

disp("Q1 b")
rank(A)
rref(null(A)')

disp("--------------------------------")
disp("Q2 a")
A = rref(null([2,3,1,0])')
rank(A)
disp("solution is [0,0,0,0] + k[2,3,1,0]")

disp("Q2 b")
A

disp("--------------------------------")
P = 1/21*[1,2,-4;2,4,-8;-4,-8,16]
disp("Q3 a")
[1,0,0]*rref(P)
disp("Q3 b")
sqrt(dot(cross([1,0,0]*rref(P), [1,1,1])/norm([1,0,0]*rref(P)),cross([1,0,0]*rref(P), [1,1,1])/norm([1,0,0]*rref(P))))
disp("Q3 c")
[V,D] = eig(P);
disp("Eigenvalues are: ")
[1,1,1]*D
if(rref (V) == [1,0,0;0,1,0;0,0,1])
	disp("P is diagonisable")
else
	disp('P isnt diagonisable');
endif

disp("--------------------------------")
disp("Q4 a1 : null")
disp("Q4 a2 : column")
disp("Q4 a3 : left null")
disp("Q4 a4 : row")
disp("Q4 b1 : (5-r)*7")
disp("Q4 b2 : s*9")
disp("Q4 b3 : r + s = 7")

disp("--------------------------------")
A = [1;2;2]
B = [5;4;-2]
disp("Q6 a")
An = A/norm(A);
Bn = B - (A' * B * A)/(A' * A);
q1 = An
q2 = Bn / norm(Bn)

disp("Q6 b")
Y = [A,B];
P = Y * inv(Y' * Y) * Y'

disp("--------------------------------")
disp("Q7 a : full rank")
disp("Q7 b : 3, 4")
disp("Q7 c")
[1,0,0;0,1,0;0,0,0]

disp("--------------------------------")
disp("Q8")
A4 = [3,0,0,2;2,3,0,0;0,2,3,0;0,0,2,3]
determinant = det(A4)

disp("--------------------------------")
disp("Q9 a : -1,1;1")
disp("Q9 b : 3,1,0;")
