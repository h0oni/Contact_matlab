function varargout = editing(varargin)
% EDITING MATLAB code for editing.fig
%      EDITING, by itself, creates a new EDITING or raises the existing
%      singleton*.
%
%      H = EDITING returns the handle to a new EDITING or the handle to
%      the existing singleton*.
%
%      EDITING('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDITING.M with the given input arguments.
%
%      EDITING('Property','Value',...) creates a new EDITING or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before editing_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to editing_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help editing

% Last Modified by GUIDE v2.5 02-Aug-2017 08:42:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @editing_OpeningFcn, ...
                   'gui_OutputFcn',  @editing_OutputFcn, ...
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


% --- Executes just before editing is made visible.
function editing_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to editing (see VARARGIN)

% Choose default command line output for editing
handles.output = hObject;
% storage
% set(handles.lb,'string',sort({con.name}));
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('iphone.jpg');
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
fid=fopen('guidata.txt','r');
d=fgets(fid);
fclose(fid);
name='';
e=1;
while e<=length(d) 
    if strcmp(d(e),';')
        handles.past=d(e+1);
        break
    end
    name=[name,d(e)];
    e=e+1;
end
storage;
l=length(con);
for i=1:l
    if strcmp(con(i).name,name)
        break
    end
end
set(handles.text,'String',con(i).name);
set(handles.edit2,'String',con(i).number);
set(handles.edit3,'String',con(i).email);
set(handles.edit4,'String',con(i).address);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes editing wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = editing_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in delet.
function delet_Callback(hObject, eventdata, handles)
% hObject    handle to delet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fid=fopen('guidata.txt','r');
d=fgets(fid);
fclose(fid);
name='';
e=1;
while e<=length(d) 
    if strcmp(d(e),';')
        handles.past=d(e+1);
        break
    end
    name=[name,d(e)];
    e=e+1;
end
storage;
l=length(con);
for i=1:l
    if strcmp(con(i).name,name)
        break
    end
end
for j=1:l-1

    if j==1
        fid=fopen('conts.txt','w');
        fprintf(fid,':%s;%s;%s;%s',con(j).name,con(j).number,con(j).email,con(j).address);
        fclose(fid);
        continue;
    else
        fid=fopen('conts.txt','a');
    end
    if j==i
        fclose(fid);
        continue;
    end    
    fprintf(fid,':%s;%s;%s;%s',con(j).name,con(j).number,con(j).email,con(j).address);
%     out=fgets(fid);
    fclose(fid);
end
view
close(editing)
function text_Callback(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text as text
%        str2double(get(hObject,'String')) returns contents of text as a double


% --- Executes during object creation, after setting all properties.
function text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fid=fopen('guidata.txt','r');
d=fgets(fid);
fclose(fid);
name='';
e=1;
while e<=length(d) 
    if strcmp(d(e),';')
        handles.past=d(e+1);
        break
    end
    name=[name,d(e)];
    e=e+1;
end
storage;
l=length(con);
for i=1:l
    if strcmp(con(i).name,name)
        break
    end
end
% con(i).name
% new
data=get(handles.text,'String');
data2=get(handles.edit2,'String');
data3=get(handles.edit3,'String');
data4=get(handles.edit4,'String');
data=takeinput(data,1);

        con(i).name=data;
   
        con(i).number=data2;
    
        con(i).email=data3;
    
        con(i).address=data4;


for e=1:l
    if e==1
        fid=fopen('conts.txt','w');
    else
        fid=fopen('conts.txt','a');
    end
    fprintf(fid,':%s;%s;%s;%s',con(e).name,con(e).number,con(e).email,con(e).address);
%     out=fgets(fid);
    fclose(fid);
end
view;
close(editing);


% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
info
close(editing)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
