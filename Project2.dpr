program Project2;

uses
  Forms,
  Unit2 in 'Unit2.pas' {MyForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMyForm, MyForm);
  Application.Run;
end.
