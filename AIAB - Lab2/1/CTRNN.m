% 1 Node RNN

dt=0.01; %time slice
T=100; %amount of time to run for
time= 0:dt:T;  % a time vector
N = 1;  %the number of neurons

W = [0.0001]% 2 3; 4 5 6; 7 8 9];% a hand coded 3*3 matrix
% W = randn(N) % a random N*N matrix

y=randn(N,length(time)); %initial conditions
theta =  0; %rand(N,1); %the biases

%main loop
for i=2:length(time)
 y(:,i) = y(:,i-1) +dt*(-y(:,i-1)+tanh( W*y(:,i-1) +theta));
end

%plot the data
plot(time,y);
