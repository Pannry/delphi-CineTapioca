unit uSystemUtils;

interface

procedure ShowInformation(const Msg: String);
function ShowQuestion(const Msg: String): Boolean;

implementation

uses
  Vcl.Forms, Winapi.Windows, Vcl.Controls;

procedure ShowInformation(const Msg: String);
begin
   Application.MessageBox(
        PWideChar(Msg),
        PWideChar(Application.Title),
        MB_ICONINFORMATION + MB_OK
    );
end;

function ShowQuestion(const Msg: String): Boolean;
begin
   Result := Application.MessageBox(
              PWideChar(Msg), PWideChar(Application.Title),
              MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = mrYes;
end;

end.
