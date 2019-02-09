function varargout = search(varargin)
% SEARCH MATLAB code for search.fig
%      SEARCH, by itself, creates a new SEARCH or raises the existing
%      singleton*.
%
%      H = SEARCH returns the handle to a new SEARCH or the handle to
%      the existing singleton*.
%
%      SEARCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEARCH.M with the given input arguments.
%
%      SEARCH('Property','Value',...) creates a new SEARCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before search_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to search_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help search

% Last Modified by GUIDE v2.5 02-Aug-2017 08:36:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @search_OpeningFcn, ...
                   'gui_OutputFcn',  @search_OutputFcn, ...
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


% --- Executes just before search is made visible.
function search_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to search (see VARARGIN)

% Choose default command line output for search
handles.output = hObject;
ah=axes('unit','normalized','position',[0 0 1 1]);
bg=imread('iphone.jpg');
imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah,'bottom');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes search wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = search_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in lb.
function lb_Callback(hObject, eventdata, handles)
% hObject    handle to lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
val=get(hObject,'Value');
str2=get(hObject,'String');
storage;
l=length(con);
for i=1:l
    if strcmp(con(i).name,str2(val))
        break
    end
end
fid=fopen('guidata.txt','w');
fprintf(fid,'%s;2',con(i).name);
fclose(fid);
info
% close(search)
% msgbox({con(i).number,con(i).email,con(i).address},con(i).name,'help')
% Hints: contents = cellstr(get(hObject,'String')) returns lb contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lb


% --- Executes during object creation, after setting all properties.
function lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit as text
%        str2double(get(hObject,'String')) returns contents of edit as a double


% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in searchit.
function searchit_Callback(hObject, eventdata, handles)
% hObject    handle to searchit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str1=get(handles.edit,'String')
str=takeinput(str1,0);
storage;
cellsearch={'<no result>'};
lstr=length(str)
l=length(con)
n=1;
for i=1:l
%     length(con(i).name)
    if length(con(i).name)>=lstr
%         a=0
% con(i).name(1:lstr)
        if strcmp(con(i).name(1:lstr),str)
%             a=0
            cellsearch{1,n}=con(i).name;
            n=n+1;
        end
    
    end
   if length(con(i).number)>=lstr
        if strcmp(con(i).number(1:lstr),str)
            cellsearch{1,n}=con(i).name;
            n=n+1;
        end
   end
end
% cellsearch
set(handles.lb,'String',cellsearch);


% --- Executes on button press in view.
function view_Callback(hObject, eventdata, handles)
% hObject    handle to view (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view
close(search)


% --- Executes on button press in editb.
function editb_Callback(hObject, eventdata, handles)
% hObject    handle to editb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
