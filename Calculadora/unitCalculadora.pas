unit unitCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    Visor: TEdit;
    um: TSpeedButton;
    Dois: TSpeedButton;
    Tres: TSpeedButton;
    Quatro: TSpeedButton;
    Cinco: TSpeedButton;
    Seis: TSpeedButton;
    Sete: TSpeedButton;
    Oito: TSpeedButton;
    Nove: TSpeedButton;
    Limpar: TSpeedButton;
    Zero: TSpeedButton;
    Mais: TSpeedButton;
    Maismenos: TSpeedButton;
    Menos: TSpeedButton;
    Virgula: TSpeedButton;
    Dividir: TSpeedButton;
    Multiplicar: TSpeedButton;
    Igual: TSpeedButton;
    procedure umClick(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure MaisClick(Sender: TObject);
    procedure MenosClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
    procedure MaismenosClick(Sender: TObject);
    procedure IgualClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1; valor1,valor2:real; funcao:integer;

implementation

{$R *.dfm}

procedure TForm1.DividirClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text); visor.Text := ''; funcao := 3;
end;

procedure TForm1.FormKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
if Key = VK_NUMPAD1 then
  um.Click;
if Key = VK_NUMPAD2 then
  dois.click;
if Key = VK_NUMPAD3 then
  tres.click;
if Key = VK_NUMPAD4 then
  quatro.click;
if Key = VK_NUMPAD5 then
  cinco.click;
if Key = VK_NUMPAD6 then
  seis.click;
if Key = VK_NUMPAD7 then
  sete.click;
if Key = VK_NUMPAD8 then
  oito.click;
if Key = VK_NUMPAD9 then
  nove.click;
if Key = VK_NUMPAD0 then
  zero.click;
if Key = VK_ADD then
  mais.click;
if Key = VK_SUBTRACT then
  menos.click;
if Key = VK_MULTIPLY then
  multiplicar.click;
if Key = VK_DIVIDE then
  dividir.click;
if Key = VK_RETURN then
  igual.click;
if Key = VK_DECIMAL then
  virgula.Click;
if Key = VK_DELETE then
  limpar.click;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
 valor1 := 0;
 valor2 := 0;
end;

procedure TForm1.IgualClick(Sender: TObject);
var soma: real;
begin valor2:=StrToFloat(visor.Text);
 case (funcao) of 1:
  begin
 soma:=valor1+valor2;
 visor.text:=FloatToStr(soma);
 end;
 2:
 begin
 soma:=valor1-valor2;
 visor.text:=FloatToStr(soma);
 end;
 3:
 begin
 soma:=valor1*valor2;
 visor.text:=FloatToStr(soma);
 end;
 4:
 begin
 if(valor2<>0)then
 begin
 soma:=valor1/valor2;
 visor.text:=FloatToStr(soma);
 end
 else
 begin
 SHowMessage('Divisão por zero!!');
 visor.Text:='ERRO';
 end;
 end;
end;
end;//finaliza o case end;

procedure TForm1.LimparClick(Sender: TObject);
begin
  visor.Clear;
end;

procedure TForm1.MaisClick(Sender: TObject);
begin
     valor1 := StrToFloat(visor.Text);
     visor.Text := '';
     funcao := 1;
end;

procedure TForm1.MaismenosClick(Sender: TObject);
begin
  visor.Text:='-'+visor.Text;
end;

procedure TForm1.MenosClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text); visor.Text := ''; funcao := 2;
end;

procedure TForm1.MultiplicarClick(Sender: TObject);
begin
  valor1 := StrToFloat(visor.Text); visor.Text := ''; funcao := 4;
end;

procedure TForm1.umClick(Sender: TObject);
begin
  visor.Text := visor.Text + (Sender as TSpeedButton).Caption;
end;

end.
