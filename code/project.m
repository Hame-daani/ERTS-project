clear
clc

t1 = torsche.ptask('t1', 3, 20, 0, 7);
t2 = torsche.ptask('t2', 2, 5, 0, 4);
t3 = torsche.ptask('t3', 1, 10, 0, 8);

TS1 = torsche.taskset([t1 t2 t3]);
maxAxis1 = max(get(TS1,'Period'));

t4 = torsche.ptask('t4', 3, 10, 0, 10);
t5 = torsche.ptask('t5', 2, 8, 0, 10);
t6 = torsche.ptask('t6', 3, 12, 0, 6);

TS2 = torsche.taskset([t4 t5 t6]);
maxAxis2 = max(get(TS2,'Period'));


% P1
% RM
RM_S1 = RM(TS1);
subplot(2,2,1);
title('RM1');
plot(RM_S1,'axis',[0,maxAxis1],'Proc',0)


% P2
% RM
RM_S2 = RM(TS2);
subplot(2,2,2);
title('RM2');
plot(RM_S2,'axis',[0,maxAxis2],'Proc',0)


% P3
% EDF
EDF_S1 = EDF(TS1);
subplot(2,2,3);
title('EDF1');
plot(EDF_S1,'axis',[0,maxAxis1],'Proc',0)

% P4
% EDF
EDF_S2 = EDF(TS2);
subplot(2,2,4);
title('EDF2');
plot(EDF_S2,'axis',[0,maxAxis2],'Proc',0)

%end of file
