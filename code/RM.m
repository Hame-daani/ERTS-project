% rate-monotonic scheduling
function TS = RM(T)
temp_TS = T;
setprio(temp_TS,'rm');
TS = torsche.fps(temp_TS);
end
