unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Editnombre: TEdit;
    Edithoras: TEdit;
    Button1: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 horas,extras: Integer;
 valor_horas,valor_extras:Real;
begin
 if (Editnombre.Text <> '') and (Edithoras.Text <> '') then
  begin
    try
      extras:=0;
      valor_extras:=0;
      valor_horas:=15000;
      horas:=StrToInt(Edithoras.Text);
      if (horas > 35) then
       begin
         extras:= horas - 35;
         horas:= horas - extras;
         valor_extras:=19000;
       end;
      if horas > 0 then valor_horas:= valor_horas * horas;
      if extras > 0 then valor_extras:= valor_extras * extras;
      valor_horas:=valor_horas + valor_extras;
      Label3.Visible:=true;
      Label3.Caption:= 'Al empleado '+Editnombre.Text+' se le debe pagar lasuma de '+FormatFloat('$###,###',valor_horas)+' pesos.';

    except on E: Exception do
    end;
  end;
end;

end.
