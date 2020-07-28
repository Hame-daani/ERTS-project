% EDF Scheduling 
function TS = EDF(T)
temp_TS = assigning(T);
TS = torsche.fps(temp_TS);
end

% assign weight to tasks based on deadline
function TS = assigning(T)
TS = sort(T,'Deadline','dec');
n = count(TS);
for i= 1:n
    TS.Weight(i) = i;
end
end
