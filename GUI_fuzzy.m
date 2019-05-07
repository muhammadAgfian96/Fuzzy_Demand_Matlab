function varargout = GUI_fuzzy(varargin)
% GUI_FUZZY MATLAB code for GUI_fuzzy.fig
%      GUI_FUZZY, by itself, creates a new GUI_FUZZY or raises the existing
%      singleton*.
%
%      H = GUI_FUZZY returns the handle to a new GUI_FUZZY or the handle to
%      the existing singleton*.
%
%      GUI_FUZZY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_FUZZY.M with the given input arguments.
%
%      GUI_FUZZY('Property','Value',...) creates a new GUI_FUZZY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_fuzzy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_fuzzy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_fuzzy

% Last Modified by GUIDE v2.5 07-May-2019 01:54:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_fuzzy_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_fuzzy_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI_fuzzy is made visible.
function GUI_fuzzy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_fuzzy (see VARARGIN)

% Choose default command line output for GUI_fuzzy
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);

I=imread('bg.jpg'); 
imshow(I,'parent',handles.axes_bg);
% UIWAIT makes GUI_fuzzy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_fuzzy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btn_run.
function btn_run_Callback(hObject, eventdata, handles)
% hObject    handle to btn_run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FLC
global s
global s2

set(handles.edit_foq,'String',s);
set(handles.edit_rop,'String',s2);



function edit_foq_Callback(hObject, eventdata, handles)
% hObject    handle to edit_foq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_foq as text
%        str2double(get(hObject,'String')) returns contents of edit_foq as a double


% --- Executes during object creation, after setting all properties.
function edit_foq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_foq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_rop_Callback(hObject, eventdata, handles)
% hObject    handle to edit_rop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_rop as text
%        str2double(get(hObject,'String')) returns contents of edit_rop as a double


% --- Executes during object creation, after setting all properties.
function edit_rop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_rop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_demand_Callback(hObject, eventdata, handles)
% hObject    handle to edit_demand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_demand as text
%        str2double(get(hObject,'String')) returns contents of edit_demand as a double


% --- Executes during object creation, after setting all properties.
function edit_demand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_demand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_supply_Callback(hObject, eventdata, handles)
% hObject    handle to edit_supply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_supply as text
%        str2double(get(hObject,'String')) returns contents of edit_supply as a double


% --- Executes during object creation, after setting all properties.
function edit_supply_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_supply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
