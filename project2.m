function varargout = project2(varargin)
% PROJECT2 MATLAB code for project2.fig
%      PROJECT2, by itself, creates a new PROJECT2 or raises the existing
%      singleton*.
%
%      H = PROJECT2 returns the handle to a new PROJECT2 or the handle to
%      the existing singleton*.
%
%      PROJECT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT2.M with the given input arguments.
%
%      PROJECT2('Property','Value',...) creates a new PROJECT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project2

% Last Modified by GUIDE v2.5 24-Dec-2018 00:18:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project2_OpeningFcn, ...
                   'gui_OutputFcn',  @project2_OutputFcn, ...
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

function project2_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = project2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function slide_Callback(hObject, eventdata, handles)
%SLIDE CALLBACK FUNCTION
%THIS FUNCTION INCLUDES THE HAPPENING TASKS WHEN SLIDER IS SLIDED
f = get(hObject, 'Value'); % THE VALUE WHICH COME FROM SLIDER
assignin('base','f',f); %ASSIGNED TO F VARIABLE
set(handles.freq,'String',num2str(f)); %WE CAN SEE THE VALUE ON EDITTEXT WHICH TAGGED FREQ
t=(0:0.01:5); %TIME
plot(t,calculate_voltage(t,str2double(get(handles.freq,'String'))),t,calculate_current(t,str2double(get(handles.r1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.freq,'String'))));
%PLOTS THE VOLTAGE AND CURRENT GRAPH
a=calculate_empedance(str2double(get(handles.r1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.freq,'String')));
set(handles.emp,'String',num2str(a));
%CALCULATES EMPEDANCE

function slide_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function freq_Callback(hObject, eventdata, handles)

function freq_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function r1_Callback(hObject, eventdata, handles)
%GETS THE VALUE WHICH WRITTEN TO R1 TAGGED EDITTEXT
r2 = get(handles.r1,'String');
r2 = str2double(r2);
%ASSIGNS IT TO R2 VARIABLE
assignin('base','r2',r2);
t=(0:0.01:5); %TIME
plot(t,calculate_voltage(t,str2double(get(handles.freq,'String'))),t,calculate_current(t,str2double(get(handles.r1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.freq,'String'))));
%PLOTS THE VOLTAGE AND CURRENT GRAPH
a=calculate_empedance(str2double(get(handles.r1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.freq,'String')));
set(handles.emp,'String',num2str(a));
%CALCULATES EMPEDANCE

function r1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function l1_Callback(hObject, eventdata, handles)
%GETS THE VALUE WHICH WRITTEN TO L1 TAGGED EDITTEXT
l2 = get(handles.l1,'String');
l2 = str2double(l2);
%ASSIGNS IT TO L2 VARIABLE
assignin('base','l2',l2);
t=(0:0.01:5); %TIME
plot(t,calculate_voltage(t,str2double(get(handles.freq,'String'))),t,calculate_current(t,str2double(get(handles.r1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.freq,'String'))));
%PLOTS THE VOLTAGE AND CURRENT GRAPH
a=calculate_empedance(str2double(get(handles.r1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.freq,'String')));
set(handles.emp,'String',num2str(a));
%CALCULATES EMPEDANCE

function l1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function c1_Callback(hObject, eventdata, handles)
%GETS THE VALUE WHICH WRITTEN TO C1 TAGGED EDITTEXT
c2 = get(handles.c1,'String');
c2 = str2double(c2);
%ASSIGNS IT TO C2 VARIABLE
assignin('base','c2',c2);
t=(0:0.01:5); %TIME
plot(t,calculate_voltage(t,str2double(get(handles.freq,'String'))),t,calculate_current(t,str2double(get(handles.r1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.freq,'String'))));
%PLOTS THE VOLTAGE AND CURRENT GRAPH
a=calculate_empedance(str2double(get(handles.r1,'String')),str2double(get(handles.c1,'String')),str2double(get(handles.l1,'String')),str2double(get(handles.freq,'String')));
set(handles.emp,'String',num2str(a));
%CALCULATES EMPEDANCE

function c1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function emp_Callback(hObject, eventdata, handles)

function emp_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
