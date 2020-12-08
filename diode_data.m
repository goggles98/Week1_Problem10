clearvars;

V_forward = 0.7;
V = (0 : 0.1 : 3)';
t = (0 : 0.1 : 3)';
R_ext = 10;
I = [0];
I_temp = 0;

for x = 1:30
    if(V(x) <= V_forward)
        I_temp = I_temp + 0.001;
        I = [I I_temp];
    else
        I_temp = V(x)/R_ext;
        I = [I I_temp];
    end
end

I = I';