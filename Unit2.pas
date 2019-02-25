unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

const coeff = 10;

type
  TMyForm = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnStart: TBitBtn;
    LabelName: TLabel;
    ImgFon: TImage;
    pbMain: TPaintBox;
    rbSklad: TRadioButton;
    rbEnergy: TRadioButton;
    rbKayta1: TRadioButton;
    rbKayta2: TRadioButton;
    rbPU: TRadioButton;
    rbKayta3: TRadioButton;
    rbLab: TRadioButton;
    TimerMain: TTimer;
    BitBtnReset: TBitBtn;
    memSklad: TMemo;
    memEnergy: TMemo;
    memKayta1: TMemo;
    memKayta2: TMemo;
    memPU: TMemo;
    memKayta3: TMemo;
    memLab: TMemo;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnStartClick(Sender: TObject);
    procedure TimerMainTimer(Sender: TObject);
    procedure BitBtnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MyForm: TMyForm;
  i,j,k,l: integer;

implementation

{$R *.dfm}

procedure TMyForm.BitBtnCloseClick(Sender: TObject);
begin
  MyForm.Close;
end;

procedure RunSklad(pbMain:TPaintBox);
begin
  if i<=20 then
  begin
    pbMain.Canvas.Ellipse(coeff*16,coeff*18+i,coeff*17,coeff*19+i);
    inc(i);
  end;
  if (i=21)and(j<=50) then
  begin
    pbMain.Canvas.Ellipse(coeff*16-j,coeff*18+i,coeff*17-j,coeff*19+i);
    inc(j);
  end;
  if (j=51)and(k<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff*16-j,coeff*18+i+k,coeff*17-j,coeff*19+i+k);
    inc(k);
  end;
  if k=11 then
    pbMain.Canvas.Ellipse(coeff*16-j,coeff*18+i+k,coeff*17-j,coeff*19+i+k);
end;

procedure RunEnergy(pbMain:TPaintBox);
begin
  if i<=20 then
  begin
    pbMain.Canvas.Ellipse(coeff*18+i,coeff*8,coeff*19+i,coeff*9);
    inc(i);
  end;
  if (i=21)and(j<=121) then
  begin
    pbMain.Canvas.Ellipse(coeff*18+i,coeff*8+j,coeff*19+i,coeff*9+j);
    inc(j);
  end;
  if (j=122)and(k<=92) then
  begin
    pbMain.Canvas.Ellipse(coeff*18+i-k,coeff*8+j,coeff*19+i-k,coeff*9+j);
    inc(k);
  end;
  if (k=93)and(l<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff*18+i-k,coeff*8+j+l,coeff*19+i-k,coeff*9+j+l);
    inc(l);
  end;
  if l=11 then
    pbMain.Canvas.Ellipse(coeff*18+i-k,coeff*8+j+l,coeff*19+i-k,coeff*9+j+l);
end;

procedure RunKayta1(pbMain:TPaintBox);
begin
  if i<=90 then
  begin
    pbMain.Canvas.Ellipse(coeff*35-i,coeff*20+4,coeff*36-i,coeff*21+4);
    inc(i);
  end;
  if (i=91)and(j<=90) then
  begin
    pbMain.Canvas.Ellipse(coeff*11-i+j,coeff*20+4,coeff*12-i+j,coeff*21+4);
    inc(j);
  end;
  if (j=91)and(k<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff*11-i+j,coeff*20+4+k,coeff*12-i+j,coeff*21+4+k);
    inc(k);
  end;
  if k=11 then
    pbMain.Canvas.Ellipse(coeff*11-i+j,coeff*20+4+k,coeff*12-i+j,coeff*21+4+k);
end;

procedure RunKayta2(pbMain:TPaintBox);
begin
  if i<=167 then
  begin
    pbMain.Canvas.Ellipse(coeff*45+5,coeff*4+i,coeff*46+5,coeff*5+i);
    inc(i);
  end;
  if (i=168)and(j<=90) then
  begin
    pbMain.Canvas.Ellipse(coeff*20-j,coeff*4+i,coeff*21-j,coeff*5+i);
    inc(j);
  end;
  if (j=91)and(k<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff*20-j,coeff*4+i+k,coeff*21-j,coeff*5+i+k);
    inc(k);
  end;
  if k=11 then
    pbMain.Canvas.Ellipse(coeff*20-j,coeff*4+i+k,coeff*21-j,coeff*5+i+k);
end;

procedure RunPU(pbMain:TPaintBox);
begin
  if i<=31 then
  begin
    pbMain.Canvas.Ellipse(coeff*30-i,coeff*12,coeff*31-i,coeff*13);
    inc(i);
  end;
  if (i=32)and(j<=90) then
  begin
    pbMain.Canvas.Ellipse(coeff*30-i,coeff*12+j,coeff*31-i,coeff*13+j);
    inc(j);
  end;
  if (j=91)and(k<=95) then
  begin
    pbMain.Canvas.Ellipse(coeff+k,coeff*20+5,coeff*2+k,coeff*21+5);
    inc(k);
  end;
  if (k=96)and(l<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff+k,coeff*20+5+l,coeff*2+k,coeff*21+5+l);
    inc(l);
  end;
  if l=11 then
    pbMain.Canvas.Ellipse(coeff+k,coeff*20+5+l,coeff*2+k,coeff*21+5+l);
end;

procedure RunKayta3(pbMain:TPaintBox);
begin
  if i<=20 then
  begin
    pbMain.Canvas.Ellipse(coeff*63,coeff*18+i,coeff*64,coeff*19+i);
    inc(i);
  end;
  if (i=21)and(j<=83) then
  begin
    pbMain.Canvas.Ellipse(coeff*63+j,coeff*18+i,coeff*64+j,coeff*19+i);
    inc(j);
  end;
  if (j=84)and(k<=95) then
  begin
    pbMain.Canvas.Ellipse(coeff*20+3-k,coeff*20+5,coeff*21+3-k,coeff*21+5);
    inc(k);
  end;
  if (k=96)and(l<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff*20+3-k,coeff*20+5+l,coeff*21+3-k,coeff*21+5+l);
    inc(l);
  end;
  if l=11 then
    pbMain.Canvas.Ellipse(coeff*20+3-k,coeff*20+5+l,coeff*21+3-k,coeff*21+5+l);
end;

procedure RunLab(pbMain:TPaintBox);
begin
  if i<=31 then
  begin
    pbMain.Canvas.Ellipse(coeff*52,coeff*4-i,coeff*53,coeff*5-i);
    inc(i);
  end;
  if (i=32)and(j<=197) then
  begin
    pbMain.Canvas.Ellipse(coeff+5,coeff*4-i+j,coeff*2+5,coeff*5-i+j);
    inc(j);
  end;
  if (j=198)and(k<=95) then
  begin
    pbMain.Canvas.Ellipse(coeff+5+k,coeff*4-i+j,coeff*2+5+k,coeff*5-i+j);
    inc(k);
  end;
  if (k=96)and(l<=10) then
  begin
    pbMain.Canvas.Ellipse(coeff+5+k,coeff*4-i+j+l,coeff*2+5+k,coeff*5-i+j+l);
    inc(l);
  end;
  if l=11 then
    pbMain.Canvas.Ellipse(coeff+5+k,coeff*4-i+j+l,coeff*2+5+k,coeff*5-i+j+l);
end;

procedure TMyForm.BitBtnStartClick(Sender: TObject);
begin
  TimerMain.Enabled:=True;
end;

procedure TMyForm.TimerMainTimer(Sender: TObject);
begin
  repaint;
  if rbSklad.Checked = true then
  begin
    RunSklad(pbMain);
    memSklad.Visible:= true;
  end;
  if rbEnergy.Checked = true then
  begin
    RunEnergy(pbMain);
    memEnergy.Visible:= true;
  end;
  if rbKayta1.Checked = true then
  begin
    RunKayta1(pbMain);
    memKayta1.Visible:= true;
  end;
  if rbKayta2.Checked = true then
  begin
    RunKayta2(pbMain);
    memKayta2.Visible:= true;
  end;
  if rbPU.Checked = true then
  begin
    RunPU(pbMain);
    memPU.Visible:= true;
  end;
  if rbKayta3.Checked = true then
  begin
    RunKayta3(pbMain);
    memKayta3.Visible:= true;
  end;
  if rbLab.Checked = true then
  begin
    RunLab(pbMain);
    memLab.Visible:= true;
  end;
end;

procedure TMyForm.BitBtnResetClick(Sender: TObject);
begin
  TimerMain.Enabled:= False;
  repaint;
  i:=0;j:=0;k:=0;l:=0;
  rbSklad.Checked:= False;
  rbEnergy.Checked:= False;
  rbKayta1.Checked:= False;
  rbKayta2.Checked:= False;
  rbPU.Checked:= False;
  rbKayta3.Checked:= False;
  rbLab.Checked:= False;
  memSklad.Visible:= False;
  memEnergy.Visible:= False;
  memKayta1.Visible:= False;
  memKayta2.Visible:= False;
  memPU.Visible:= False;
  memKayta3.Visible:= False;
  memLab.Visible:= False;
end;
end.
