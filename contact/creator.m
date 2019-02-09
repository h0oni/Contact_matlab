function varargout = creator(varargin)
% CREATOR MATLAB code for creator.fig
%      CREATOR, by itself, creates a new CREATOR or raises the existing
%      singleton*.
%
%      H = CREATOR returns the handle to a new CREATOR or the handle to
%      the existing singleton*.
%
%      CREATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CREATOR.M with the given input arguments.
%
%      CREATOR('Property','Value',...) creates a new CREATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before creator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to creator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help creator

% Last Modified by GUIDE v2.5 02-Aug-2017 08:46:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @creator_OpeningFcn, ...
                   'gui_OutputFcn',  @creator_OutputFcn, ...
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


% --- Executes just before creator is made visible.
function creator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to creator (see VARARGIN)

% Choose default command line output for creator
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('iphone.jpg');
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
handles.output = hObject;
% handles.namevar='';
% handles.numbvar='';
% handles.emailvar='';
% handles.addvar='';
% fid=fopen('guidata.txt','r');
% d=fgets(fid);
% n=1;
% i=1;
% while i<=length(d)
%     if strcmp(d(i),';')
%         n=n+1;
%         i=i+1;
%         continue;
%     end
%     switch n
%         case 1
%             handles.namevar=strcat(handles.namevar,d(i));
%         case 2
%             handles.numbvar=strcat(handles.numbvar,d(i));
%         case 3
%             handles.emailvar=strcat(handles.emailvar,d(i));
%         case 4
%             handles.addvar=strcat(handles.addvar,d(i));
%     end
% i=i+1;
% end
% 
% set(handles.name,'string',handles.namevar);
% set(handles.numb,'string',handles.numbvar);
% set(handles.email,'string',handles.emailvar);
% set(handles.add,'string',handles.addvar);
% % Update handles structure
guidata(hObject, handles);

% UIWAIT makes creator wait for user response (see UIRESUME)
% uiwait(handles.Gui2);


% --- Outputs from this function are returned to the command line.
function varargout = creator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function name_Callback(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of name as text
%        str2double(get(hObject,'String')) returns contents of name as a double


% --- Executes during object creation, after setting all properties.
function name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function number_Callback(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of number as text
%        str2double(get(hObject,'String')) returns contents of number as a double


% --- Executes during object creation, after setting all properties.
function number_CreateFcn(hObject, eventdata, handles)
% hObject    handle to number (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function email_Callback(hObject, eventdata, handles)
% hObject    handle to email (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of email as text
%        str2double(get(hObject,'String')) returns contents of email as a double


% --- Executes during object creation, after setting all properties.
function email_CreateFcn(hObject, eventdata, handles)
% hObject    handle to email (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function address_Callback(hObject, eventdata, handles)
% hObject    handle to address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of address as text
%        str2double(get(hObject,'String')) returns contents of address as a double


% --- Executes during object creation, after setting all properties.
function address_CreateFcn(hObject, eventdata, handles)
% hObject    handle to address (see GCBO)
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
%cont=struct('name',{},'number',{},'email',{},'address',{});
    storage
    fid=fopen('conts.txt','a');
    namevar=get(handles.name,'String');
    numbvar=get(handles.numb,'String');
    emailvar=get(handles.email,'String');
    addvar=get(handles.add,'String');
    aname=takeinput(namevar,1);
    aemail=takeinput(emailvar,3);
    fprintf(fid,':%s;%s;%s;%s',aname,numbvar,aemail,addvar);
    fclose(fid);
    view
    close(creator);
   


% --- Executes on button press in pushbutton2.


% --- Executes on button press in cancel.
function cancel_Callback(hObject, eventdata, handles)
% hObject    handle to cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%     close(keyboardPRO);
    view
   close(creator)



function numb_Callback(hObject, eventdata, handles)
% hObject    handle to numb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numb as text
%        str2double(get(hObject,'String')) returns contents of numb as a double


% --- Executes during object creation, after setting all properties.
function numb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function add_Callback(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of add as text
%        str2double(get(hObject,'String')) returns contents of add as a double


% --- Executes during object creation, after setting all properties.
function add_CreateFcn(hObject, eventdata, handles)
% hObject    handle to add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
