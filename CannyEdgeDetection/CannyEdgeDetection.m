function varargout = CannyEdgeDetection(varargin)
% CANNYEDGEDETECTION MATLAB code for CannyEdgeDetection.fig
%      CANNYEDGEDETECTION, by itself, creates a new CANNYEDGEDETECTION or raises the existing
%      singleton*.
%
%      H = CANNYEDGEDETECTION returns the handle to a new CANNYEDGEDETECTION or the handle to
%      the existing singleton*.
%
%      CANNYEDGEDETECTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CANNYEDGEDETECTION.M with the given input arguments.
%
%      CANNYEDGEDETECTION('Property','Value',...) creates a new CANNYEDGEDETECTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CannyEdgeDetection_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CannyEdgeDetection_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CannyEdgeDetection

% Last Modified by GUIDE v2.5 09-Aug-2017 17:09:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CannyEdgeDetection_OpeningFcn, ...
                   'gui_OutputFcn',  @CannyEdgeDetection_OutputFcn, ...
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


% --- Executes just before CannyEdgeDetection is made visible.
function CannyEdgeDetection_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CannyEdgeDetection (see VARARGIN)

% Choose default command line output for CannyEdgeDetection
handles.output = hObject;
handles.fileName = 'input.JPG';
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CannyEdgeDetection wait for user response (see UIRESUME)
% uiwait(handles.figure1);
if(handles.button == 1)
    %button_Callback(hObject, eventdata, handles)
    file = handles.fileName;
    E16(file)
end


% --- Outputs from this function are returned to the command line.
function varargout = CannyEdgeDetection_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;



function [file] = fileName_Callback(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fileName as text
%        str2double(get(hObject,'String')) returns contents of fileName as a double
% file = hObject;

% --- Executes during object creation, after setting all properties.
function fileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button.
function button_Callback(hObject, eventdata, handles)
% hObject    handle to button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 
file = handles.fileName;
E16(file)

