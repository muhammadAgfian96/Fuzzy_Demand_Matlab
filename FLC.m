% using matlab 2016b

a=newfis('tipper');
a=addvar(a,'input','demand',[0 320]);
a=addmf(a,'input',1,'Low','trapmf', [-115.2 -12.8 82.42 160]);
a=addmf(a,'input',1,'Medium','trimf', [82.42 160 237.6]);
a=addmf(a,'input',1,'High','trapmf', [160 237.6 332.8 435.2]);
% figure,
% plotmf(a,'input',1)

a=addvar(a,'input','supply',[0 1307]);
a=addmf(a,'input',2,'Low','trapmf',  [-468 -52 326.8 653.5]);
a=addmf(a,'input',2,'Medium','trimf',  [326.8 653.5 980.3]);
a=addmf(a,'input',2,'High','trapmf',  [653.5 980.3 1352 1768]);
% figure,
% plotmf(a,'input',2)


a=addvar(a,'output','FOQ',[0 1307]);
a=addmf(a,'output',1,'Low','trapmf',  [-468 -52 326.8 653.5]);
a=addmf(a,'output',1,'Medium','trimf',  [326.8 653.5 980.3]);
a=addmf(a,'output',1,'High','trapmf',  [653.5 980.3 1352 1768]);
% figure,
% plotmf(a,'output',1)

a=addvar(a,'output','ROP',[0 680]);
a=addmf(a,'output',2,'Very Low','trimf', [-1 0 200]);
a=addmf(a,'output',2,'Low','trimf', [0 200 340]);
a=addmf(a,'output',2,'Medium','trimf', [200 340 480]);
a=addmf(a,'output',2,'High','trimf', [340 480 680]);
a=addmf(a,'output',2,'Very High','trimf', [480 680 700]);
% figure,
% plotmf(a,'output',2)

% D S FOQ ROP W &|
ruleList=[ ...
1 1 2 3 1 1
1 2 1 3 1 1
1 3 2 2 1 1
2 1 1 5 1 1
2 2 2 4 1 1
2 3 3 4 1 1
3 1 2 5 1 1
3 2 3 4 1 1
3 3 3 4 1 1
];


a=addrule(a, ruleList );

out = evalfis([120 600],a);
s=num2str(out(1));
X = sprintf('FOQ = %s',s);
disp(X);

s2=num2str(out(2));
X2 = sprintf('ROP = %s',s2);
disp(X2);

showfis(a);
showrule(a,[1 2 3 4 5 6 7 8 9]);