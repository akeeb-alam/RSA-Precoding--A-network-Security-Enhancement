function varargout = rsagui(varargin)

% RSAGUI M-file for rsagui.fig
%      RSAGUI, by itself, creates a new RSAGUI or raises the existing
%      singleton*.
%
%      H = RSAGUI returns the handle to a new RSAGUI or the handle to
%      the existing singleton*.
%
%      RSAGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RSAGUI.M with the given input arguments.
%
%      RSAGUI('Property','Value',...) creates a new RSAGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rsagui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rsagui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rsagui

% Last Modified by GUIDE v2.5 02-Sep-2013 16:41:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rsagui_OpeningFcn, ...
                   'gui_OutputFcn',  @rsagui_OutputFcn, ...
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


% --- Executes just before rsagui is made visible.
function rsagui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rsagui (see VARARGIN)

% Choose default command line output for rsagui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rsagui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rsagui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_public_key_Callback(hObject, eventdata, handles)
% hObject    handle to sender_public_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_public_key as text
%        str2double(get(hObject,'String')) returns contents of sender_public_key as a double


% --- Executes during object creation, after setting all properties.
function sender_public_key_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_public_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_private_key_Callback(hObject, eventdata, handles)
% hObject    handle to sender_private_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_private_key as text
%        str2double(get(hObject,'String')) returns contents of sender_private_key as a double


% --- Executes during object creation, after setting all properties.
function sender_private_key_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_private_key (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_message_Callback(hObject, eventdata, handles)
% hObject    handle to sender_message (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_message as text
%        str2double(get(hObject,'String')) returns contents of sender_message as a double


% --- Executes during object creation, after setting all properties.
function sender_message_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_message (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_encrypt_message_Callback(hObject, eventdata, handles)
% hObject    handle to sender_encrypt_message (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_encrypt_message as text
%        str2double(get(hObject,'String')) returns contents of sender_encrypt_message as a double


% --- Executes during object creation, after setting all properties.
function sender_encrypt_message_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_encrypt_message (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sender_encrypt.
function sender_encrypt_Callback(hObject, eventdata, handles)
% hObject    handle to sender_encrypt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%prime generation
state1=1;
state2=1;
p=1;
q=1;
while state1==state2|| p==q
state1=randi(1000);
state2=randi(1000);
if state1~=state2
p= randseed(state1,1,1,30,100);
q= randseed(state2,1,1,30,100);
end
end
 %prime generated
 
[Pk,Phi,d,e] = intialize(p,q);
set(handles.sender_public_key,'String',e);
 set(handles.sender_private_key,'String',d);
%m1=str2num(get(handles.a,'String'));
%m2=str2num(get(handles.b,'String'));
%p=m1+m2;
%set(handles.c,'String',p);
M=num2str(get(handles.sender_message,'String'));
x=length(M);
c=0;
for j= 1:x
    for i=0:255
        if strcmp(M(j),char(i))
            c(j)=i;
        end
    end
end
% % %Encryption
for j= 1:x
   sender_cipher(j)= crypt(c(j),Pk,e); 
   if sender_cipher(j)>255 
       agcipher(j)=rem(sender_cipher(j),255);%again cipher
       if agcipher(j)<32
           agcipher(j)=agcipher(j)+32;
       end
   else
       agcipher(j)=sender_cipher(j)+32;
   end
end
disp(agcipher);
disp(['', agcipher]);
%disp(['Encrypted Message is: ' agcipher]);

set(handles.sender_encrypt_message,'String', ['', agcipher]);

    


% --- Executes on button press in sender_server.
function sender_server_Callback(hObject, eventdata, handles)
% hObject    handle to sender_server (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sender_RSA.
function sender_RSA_Callback(hObject, eventdata, handles)
% hObject    handle to sender_RSA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.sender_public_key_2,'Visible','Off');
set(handles.sender_private_key_2,'Visible','Off');
set(handles.sender_encrypt_message_2,'Visible','Off');
set(handles.public_key_text,'Visible','off');
set(handles.private_key_text,'Visible','off');
set(handles.rsa_encrypt_text,'Visible','off');
% Hint: get(hObject,'Value') returns toggle state of sender_RSA


% --- Executes on button press in sender_improve_RSA.
function sender_improve_RSA_Callback(hObject, eventdata, handles)
% hObject    handle to sender_improve_RSA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%TextH = text(0.5, 0.5, 'asd');
 %set(TextH, 'Visible', 'off')
set(handles.sender_public_key_2,'Visible','On');
%set(handles.rsa_encrypt_text,'String','');
set(handles.sender_private_key_2,'Visible','On');
set(handles.sender_encrypt_message_2,'Visible','On');
set(handles.public_key_text,'Visible','on');
set(handles.private_key_text,'Visible',' on');
set(handles.rsa_encrypt_text,'Visible','on');
% Hint: get(hObject,'Value') returns toggle state of sender_improve_RSA



function sender_encrypt_message_2_Callback(hObject, eventdata, handles)
% hObject    handle to sender_encrypt_message_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_encrypt_message_2 as text
%        str2double(get(hObject,'String')) returns contents of sender_encrypt_message_2 as a double


% --- Executes during object creation, after setting all properties.
function sender_encrypt_message_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_encrypt_message_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_public_key_2_Callback(hObject, eventdata, handles)
% hObject    handle to sender_public_key_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_public_key_2 as text
%        str2double(get(hObject,'String')) returns contents of sender_public_key_2 as a double


% --- Executes during object creation, after setting all properties.
function sender_public_key_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_public_key_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sender_private_key_2_Callback(hObject, eventdata, handles)
% hObject    handle to sender_private_key_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sender_private_key_2 as text
%        str2double(get(hObject,'String')) returns contents of sender_private_key_2 as a double


% --- Executes during object creation, after setting all properties.
function sender_private_key_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sender_private_key_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function rsa_encrypt_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rsa_encrypt_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%set(handles.rsa_encrypt_text,'String','');
