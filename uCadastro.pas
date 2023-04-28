unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrmPai;

type
  TCadastroPai = class(TfrmPai)
    lblCodigo: TLabel;
    edtCodigo: TEdit;
    btnSalvar: TButton;
    btnSair: TButton;
    lblDatUltAlt: TLabel;
    edtDatCad: TEdit;
    edtDatUltAlt: TEdit;
    lblDatCad: TLabel;
    lblUserAlt: TLabel;
    edtUserAlt: TEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject); override;
    procedure LimpaEdit;        virtual;
    procedure CarregaEdit;      virtual;
    procedure BloqueiaEdit;     virtual;
    procedure DesbloqueiaEdit;  virtual;
    procedure Salvar;           virtual;

  end;

var
  CadastroPai: TCadastroPai;

implementation

{$R *.dfm}

{ TCadastroPai }

procedure TCadastroPai.BloqueiaEdit;
begin

end;

procedure TCadastroPai.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TCadastroPai.btnSalvarClick(Sender: TObject);
begin
  inherited;
  Salvar;
end;

procedure TCadastroPai.CarregaEdit;
begin

end;

procedure TCadastroPai.conhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TCadastroPai.DesbloqueiaEdit;
begin

end;

procedure TCadastroPai.LimpaEdit;
begin

end;

procedure TCadastroPai.Salvar;
begin

end;

end.
