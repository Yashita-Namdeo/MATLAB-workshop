function varargout = Median_Filter(varargin)
% MEDIAN_FILTER MATLAB code for Median_Filter.fig
%      MEDIAN_FILTER, by itself, creates a new MEDIAN_FILTER or raises the existing
%      singleton*.
%
%      H = MEDIAN_FILTER returns the handle to a new MEDIAN_FILTER or the handle to
%      the existing singleton*.
%
%      MEDIAN_FILTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MEDIAN_FILTER.M with the given input arguments.
%
%      MEDIAN_FILTER('Property','Value',...) creates a new MEDIAN_FILTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Median_Filter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Median_Filter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Median_Filter

% Last Modified by GUIDE v2.5 13-May-2021 22:27:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Median_Filter_OpeningFcn, ...
                   'gui_OutputFcn',  @Median_Filter_OutputFcn, ...
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


% --- Executes just before Median_Filter is made visible.
function Median_Filter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Median_Filter (see VARARGIN)

% Choose default command line output for Median_Filter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Median_Filter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Median_Filter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile('*.*', 'Pick any image file');
    if isequal(filename,0) || isequal(pathname,0)
       warndlg('User pressed cancel') %can also use helpdlg instead of warndlg
    else
       a = imread(strcat(pathname,filename));
       axes(handles. axes1);
       imshow(a);
       handles.a = a;
    end
% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in addnoise.
function addnoise_Callback(hObject, eventdata, handles)
% hObject    handle to addnoise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a = handles.a;
J = imnoise(a,'salt & pepper', 0.02);
axes(handles.axes2);
imshow(J);
handles.J = J;

% Update handles structure
guidata(hObject, handles);

% --- Executes on button press in applyfilter.
function applyfilter_Callback(hObject, eventdata, handles)
% hObject    handle to applyfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
J = handles.J;
C = medfilt2(J,[3,3]);
axes(handles.axes3);
imshow(C);
