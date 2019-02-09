
function varargout = view(varargin)
% VIEW MATLAB code for view.fig
%      VIEW, by itself, creates a new VIEW or raises the existing
%      singleton*.
%
%      H = VIEW returns the handle to a new VIEW or the handle to
%      the existing singleton*.
%
%      VIEW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIEW.M with the given input arguments.
%
%      VIEW('Property','Value',...) creates a new VIEW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before view_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to view_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help view

% Last Modified by GUIDE v2.5 27-Jul-2017 07:08:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @view_OpeningFcn, ...
                   'gui_OutputFcn',  @view_OutputFcn, ...
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


% --- Executes just before view is made visible.
function view_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to view (see VARARGIN)

% Choose default command line output for view
handles.output = hObject;
storage
set(handles.listbox2,'string',sort({con.name}));
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('iphone.jpg');
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes view wait for user response (see UIRESUME)
% uiwait(handles.Gui1);


% --- Outputs from this function are returned to the command line.
function varargout = view_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes on selection change in viewer.
function viewer_Callback(hObject, eventdata, handles)
% hObject    handle to viewer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns viewer contents as cell array
%        contents{get(hObject,'Value')} returns selected item from viewer


% --- Executes during object creation, after setting all properties.
function viewer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to viewer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(hObject,'Value');
str=get(hObject,'String');
storage;
l=length(con);
for i=1:l
    if strcmp(con(i).name,str(val))
        break
    end
end
fid=fopen('guidata.txt','w');
fprintf(fid,'%s;1',con(i).name);
fclose(fid);
info
close(view)
% msgbox({con(i).number,con(i).email,con(i).address},con(i).name,'help')
% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in create.
function create_Callback(hObject, eventdata, handles)
% hObject    handle to create (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
creator
close(view)



% --- Executes on button press in search.
function search_Callback(hObject, eventdata, handles)
% hObject    handle to search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
search



% --- Executes on button press in edit.
function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
editing;
close(view);
