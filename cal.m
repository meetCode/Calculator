function varargout = cal(varargin)
% CAL MATLAB code for cal.fig
%      CAL, by itself, creates a new CAL or raises the existing
%      singleton*.
%
%      H = CAL returns the handle to a new CAL or the handle to
%      the existing singleton*.
%
%      CAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAL.M with the given input arguments.
%
%      CAL('Property','Value',...) creates a new CAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cal_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cal_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cal

% Last Modified by GUIDE v2.5 25-Oct-2015 18:43:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cal_OpeningFcn, ...
                   'gui_OutputFcn',  @cal_OutputFcn, ...
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


% --- Executes just before cal is made visible.
function cal_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cal (see VARARGIN)

% Choose default command line output for cal
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%定义全局变量
global  pre nex numend  fuhao sum
global temp temp2
sum=0;
fuhao=0;
pre=0;
nex=0;
temp='0';
temp2='0';
numend=0;
% 设置背景图片
s=what;
filepppp=fullfile(s.path,'res','bg.jpg');
backgroundImage = importdata(filepppp);
% 选择坐标系
axes(handles.axes1);
% 将图片添加到坐标系中，于是就成了背景了
image(backgroundImage);
% 将坐标系的坐标轴标签去掉
axis off





% UIWAIT makes cal wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cal_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '1';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '2';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '3';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '4';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '5';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '6';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '7';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '8';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '9';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
str=[str,' '];
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in pushbutton0.
function pushbutton0_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
is = get(handles.cal_state,'string');
m = '0';
if str(1) == ' ' | is == '1'
    str=m;
else
    str(end)=m;
end
if str(1) ~= ' '
    str = [str, ' '];
end
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in negate.
function negate_Callback(hObject, eventdata, handles)
% hObject    handle to negate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global pre nex;
global fuhao sum;
global numend;
%做完改switch
if(fuhao==1)                %加
    sum=pre+nex;
    pre=sum;
else if(fuhao==2)           %减
        sum=pre-nex;
        pre=sum;
        if(fuhao==3)        %乘
            sum=pre*nex;
            pre=sum;
            if(fuhao==4)   %除
                sum=pre/nex;
                pre=sum;
            end
        end
     end
     sum=pre-nex;
     pre=sum;
end
set(handles.result,'string',sum);%按甲号后显示目前为止结果
numend=1;
nex=0;

% --- Executes on button press in multiply.
function multiply_Callback(hObject, eventdata, handles)
% hObject    handle to multiply (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fuhao;
m='*';
str=get(handles.display,'string');%TODO 改全局变量？
set(handles.display,'string',[str m]);
%=================================================
equal_Callback(hObject, eventdata, handles);
fuhao=3;


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fuhao;
m='+';
str=get(handles.display,'string');%TODO 改全局变量？
set(handles.display,'string',[str m]);
%=================================================
equal_Callback(hObject, eventdata, handles);
fuhao=1;



% --- Executes on button press in subtract.
function subtract_Callback(hObject, eventdata, handles)
% hObject    handle to subtract (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
formula= get(handles.display, 'string');
is = get(handles.cal_state,'string');

[formula, str, is]= deal(formula, str, is, '-');

set(handles.result, 'string', str);
set(handles.display, 'string', formula);
set(handles.cal_state, 'string', is);

% --- Executes on button press in point.
function point_Callback(hObject, eventdata, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.result, 'string');
is = get(handles.cal_state, 'string');
if str(1) == ' ' | is == '1'
    str = '0. ';
elseif sum(str == '.') ~= 0
    ;
else
    str = [str(1 : end-1) '. '];
end
set(handles.result, 'string', str);
set(handles.cal_state, 'string', '0');

% --- Executes on button press in CE.
function CE_Callback(hObject, eventdata, handles)
% hObject    handle to CE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result, 'string');
is = get(handles.cal_state, 'string');
if str(1) == ' ' | is == '1'
    ;
elseif size(str, 2) > 2     %insure column>2
    str = str(1 : end-2);
    str = [str ' '];
else
    str = ' 0 '
end
set(handles.result, 'string', str);
    

% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.cal_state, 'string', '0');
set(handles.result, 'string', ' 0 ');
set(handles.display, 'string', ' ');
guidata(hObject, handles);

% --- Executes on button press in del.
function del_Callback(hObject, eventdata, handles)
% hObject    handle to del (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reciprocal.
function reciprocal_Callback(hObject, eventdata, handles)
% hObject    handle to reciprocal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result, 'string');
formula = get(handles.display, 'string');

if str(1) == ' '
    formula = ['rec(0) '];
    str = 'Error Input ';
else
    str = str(1 : end-1);
    s = str2num(str);
    if s == 0
        str = 'Error Input ';
    else
        formula = ['rec(',num2str(1/s), ') '];
        str = [num2str(1/s), ' '];
    end
end
set(handles.result, 'string', str);
set(handles.display, 'string', formula);



% --- Executes on button press in division.
function division_Callback(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result,'string');
formula= get(handles.display, 'string');
is = get(handles.cal_state,'string');

[formula, str, is]= deal(formula, str, is, '/');

set(handles.result, 'string', str);
set(handles.display, 'string', formula);
set(handles.cal_state, 'string', is);


% --- Executes on button press in genhao.
function genhao_Callback(hObject, eventdata, handles)
% hObject    handle to genhao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in double.
function double_Callback(hObject, eventdata, handles)
% hObject    handle to double (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.result, 'string');
formula = get(handles.display, 'string');
is = get(handles.cal_state, 'string');
if str(1) == ' '
    ;
else
    str = str(1 : end-1);
    s = str2num(str);
    formula = ['(' num2str(s), ')^2'];
    str = [num2str(s^2), ' '];
end
set(handles.result, 'string',str);
set(handles.display, 'string',formula);
set(handles.cal_state, 'string' ,'1');
            

% --- Executes on button press in percent.
function percent_Callback(hObject, eventdata, handles)
% hObject    handle to percent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nex;
global numend;
m='%';
str=get(handles.display,'string');
set(handles.display,'string',[str m]);

nex=nex/100;
set(handles.result,'string',nex);%按甲号后显示目前为止结果




function display_Callback(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of display as text
%        str2num(get(hObject,'String')) returns contents of display as a double


% --- Executes during object creation, after setting all properties.
function display_CreateFcn(hObject, eventdata, handles)
% hObject    handle to display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
