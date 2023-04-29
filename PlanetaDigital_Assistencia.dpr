program PlanetaDigital_Assistencia;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uConsulta in 'uConsulta.pas' {ConsultaPai},
  uDM in 'uDM.pas' {DM: TDataModule},
  uConsultaPaises in 'uConsultaPaises.pas' {ConsultaPaises},
  uCadastro in 'uCadastro.pas' {CadastroPai},
  uFrmPai in 'uFrmPai.pas' {frmPai},
  uCadastroPaises in 'uCadastroPaises.pas' {CadastroPaises},
  uPai in 'uPai.pas',
  uPaises in 'uPaises.pas',
  uInterfaces in 'uInterfaces.pas',
  uConsultaCidades in 'uConsultaCidades.pas' {ConsultaCidades},
  uConsultaEstados in 'uConsultaEstados.pas' {ConsultaEstados},
  uCadastroEstados in 'uCadastroEstados.pas' {CadastroEstados},
  uCadastroCidades in 'uCadastroCidades.pas' {CadastroCidades},
  uController in 'uController.pas',
  uDao in 'uDao.pas',
  uCtrlPaises in 'uCtrlPaises.pas',
  uDaoPaises in 'uDaoPaises.pas';

{$R *.res}


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TConsultaPai, ConsultaPai);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TConsultaPaises, ConsultaPaises);
  Application.CreateForm(TCadastroPai, CadastroPai);
  Application.CreateForm(TfrmPai, frmPai);
  Application.CreateForm(TCadastroPaises, CadastroPaises);
  Application.CreateForm(TConsultaCidades, ConsultaCidades);
  Application.CreateForm(TConsultaEstados, ConsultaEstados);
  Application.CreateForm(TCadastroEstados, CadastroEstados);
  Application.CreateForm(TCadastroCidades, CadastroCidades);
  Application.Run;
  //aAplicacao:= Aplicacao.CrieObj;
  //aAplicacao.Execute_se;
  //aAplicacao.Destrua_se;
end.
