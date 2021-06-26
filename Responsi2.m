function varargout = Responsi2(varargin)
% RESPONSI2 MATLAB code for Responsi2.fig
%      RESPONSI2, by itself, creates a new RESPONSI2 or raises the existing
%      singleton*.
%
%      H = RESPONSI2 returns the handle to a new RESPONSI2 or the handle to
%      the existing singleton*.
%
%      RESPONSI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPONSI2.M with the given input arguments.
%
%      RESPONSI2('Property','Value',...) creates a new RESPONSI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Responsi2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Responsi2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Responsi2

% Last Modified by GUIDE v2.5 25-Jun-2021 15:46:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Responsi2_OpeningFcn, ...
                   'gui_OutputFcn',  @Responsi2_OutputFcn, ...
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


% --- Executes just before Responsi2 is made visible.
function Responsi2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Responsi2 (see VARARGIN)

% Choose default command line output for Responsi2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Responsi2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Responsi2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
dataset = readmatrix('DATA RUMAH.xlsx');
dataset = [dataset(:,1:1) dataset(:,3:3) dataset(:,4:4) dataset(:,5:5) dataset(:,6:6) dataset(:,7:7) dataset(:,8:8)];
uitable1 = findobj(0, 'tag', 'uitable1');
set(uitable1,'Data',dataset); 



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ranking = hitungData();
ranking = [ranking(:,1:1) ranking(:,3:3) ranking(:,4:4) ranking(:,5:5) ranking(:,6:6) ranking(:,7:7) ranking(:,8:8)];
ranking = table2array(ranking);
uitable3 = findobj(0, 'tag', 'uitable3');
set(uitable3,'Data',ranking); 


% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
