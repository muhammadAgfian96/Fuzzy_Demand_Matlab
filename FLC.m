% using matlab 2016b
% https://www.researchgate.net/post/How_can_I_implement_fuzzy_logic_in_matlab_without_using_fuzzy_logic_toolbox

a=newfis('tipper');
a=addvar(a,'input','demand',[0 320]);
a=addmf(a,'input',1,'Low','trapmf', [-115.2 -12.8 82.42 160]);
a=addmf(a,'input',1,'Medium','trimf', [82.42 160 237.6]);
a=addmf(a,'input',1,'High','trapmf', [160 237.6 332.8 435.2]);
% figure,
[x_out, y_out] =  plotmf(a,'input',1);
plot(handles.axes_demand,x_out, y_out, ...
    'LineWidth',2);
legend(handles.axes_demand,'Low','Medium','High');
xlabel(handles.axes_demand,'MF Demand');

a=addvar(a,'input','supply',[0 1307]);
a=addmf(a,'input',2,'Low','trapmf',  [-468 -52 326.8 653.5]);
a=addmf(a,'input',2,'Medium','trimf',  [326.8 653.5 980.3]);
a=addmf(a,'input',2,'High','trapmf',  [653.5 980.3 1352 1768]);
% figure,
[x_out2, y_out2] =  plotmf(a,'input',2);
plot(handles.axes_supply,x_out2, y_out2, ...
    'LineWidth',2);
legend(handles.axes_supply,'Low','Medium','High');
xlabel(handles.axes_supply,'MF Supply');

a=addvar(a,'output','FOQ',[0 1307]);
a=addmf(a,'output',1,'Low','trapmf',  [-468 -52 326.8 653.5]);
a=addmf(a,'output',1,'Medium','trimf',  [326.8 653.5 980.3]);
a=addmf(a,'output',1,'High','trapmf',  [653.5 980.3 1352 1768]);
% figure,
[x_out3, y_out3] =  plotmf(a,'output',1);
plot(handles.axes_FOQ,x_out3, y_out3, ...
    'LineWidth',2);
legend(handles.axes_FOQ,'Low','Medium','High');
xlabel(handles.axes_FOQ,'MF Freq Order Quant');

a=addvar(a,'output','ROP',[0 680]);
a=addmf(a,'output',2,'Very Low','trimf', [-1 0 200]);
a=addmf(a,'output',2,'Low','trimf', [0 200 340]);
a=addmf(a,'output',2,'Medium','trimf', [200 340 480]);
a=addmf(a,'output',2,'High','trimf', [340 480 680]);
a=addmf(a,'output',2,'Very High','trimf', [480 680 700]);
% figure,
% plotmf(a,'output',2)
[x_out4, y_out4] =  plotmf(a,'output',2);
plot(handles.axes_ROP,x_out4, y_out4, ...
    'LineWidth',2);
legend(handles.axes_ROP,'Very Low', 'Low','Medium','High','Very High');
xlabel(handles.axes_ROP,'MF ROP');

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

in_demand = str2num(handles.edit_demand.String);
in_supply = str2num(handles.edit_supply.String);
out = evalfis([in_demand in_supply],a);
s=num2str(out(1));
X = sprintf('FOQ = %s',s);
disp(X);

s2=num2str(out(2));
X2 = sprintf('ROP = %s',s2);
disp(X2);

% showfis(a);
showrule(a,[1 2 3 4 5 6 7 8 9]);