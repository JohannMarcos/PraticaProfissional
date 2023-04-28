unit uCadastroPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls, uPaises, uCtrlPaises;

type
  TCadastroPaises = class(TCadastroPai)
    lblPais: TLabel;
    lblDDI: TLabel;
    edtPais: TEdit;
    edtDDI: TEdit;
    lblSigla: TLabel;
    edtSigla: TEdit;
  private
    { Private declarations }
    oPais: Paises;
    aCtrlPaises:ctrlPaises;
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject); override;
    procedure LimpaEdit;        override;
    procedure CarregaEdit;      override;
    procedure BloqueiaEdit;     override;
    procedure DesbloqueiaEdit;  override;
    procedure Salvar;           override;
  end;

var
  CadastroPaises: TCadastroPaises;

implementation

{$R *.dfm}

{ TCadastroPaises }

procedure TCadastroPaises.BloqueiaEdit;
begin
  inherited;
  self.edtPais.Enabled:= false;
  self.edtDDI.Enabled:= false;
  self.edtSigla.Enabled:= false;

end;

procedure TCadastroPaises.CarregaEdit;
begin
  inherited;
  self.edtCodigo.Text:= inttostr(oPais.GetCodigo);
  self.edtPais.Text:= oPais.GetPais;
  self.edtDDI.Text:= oPais.GetDDI;
  self.edtSigla.Text:= oPais.GetSigla;
  self.edtDatCad.Text:= datetimetostr(oPais.GetDatCad);
  self.edtDatUltAlt.Text:= datetimetostr(oPais.GetDatUltAlt);
end;

procedure TCadastroPaises.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
   oPais:= Paises(pObj);
   aCtrlPaises:= ctrlPaises(pCtrl);
end;

procedure TCadastroPaises.DesbloqueiaEdit;
begin
  inherited;
  self.edtPais.Enabled:= true;
  self.edtDDI.Enabled:= true;
  self.edtSigla.Enabled:= true;

end;

procedure TCadastroPaises.LimpaEdit;
begin
  inherited;
  self.edtPais.Clear;
  self.edtDDI.Clear;
  self.edtSigla.Clear;
  self.edtDatCad.Clear;
  self.edtDatUltAlt.Clear;

end;

procedure TCadastroPaises.Salvar;
begin
  inherited;
  oPais.SetCodigo(strtoint(edtCodigo.Text));
  oPais.SetPais(edtPais.Text);
  oPais.SetDDI(edtDDI.Text);
  oPais.SetSigla(edtSigla.Text);
  oPais.SetDatCad(strtodatetime(edtDatCad.text));
  oPais.SetDatUltAlt(strtodatetime(edtDatUltAlt.text));

  aCtrlPaises.Salvar(oPais);

end;

end.
