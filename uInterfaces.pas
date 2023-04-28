unit uInterfaces;

interface
  Uses
    uConsultaPaises, uConsultaEstados, uConsultaCidades,
    uCadastroPaises, uCadastroEstados, uCadastroCidades;
  type Interfaces = class
    private
    protected
    aConsultaPaises  :TConsultaPaises;
    aConsultaEstados: TConsultaEstados;
    aConsultaCidades : TConsultaCidades;
    oCadastroPaises : TCadastroPaises;
    oCadastroEstados: TCadastroEstados;
    oCadastroCidades : TCadastroCidades;
    public
      Constructor CrieObj;
      destructor Destrua_se;
      procedure PDPaises(pObj, pCtrl :TObject);
      procedure PDEstados(pObj, pCtrl :TObject);
      procedure PDCidades(pObj, pCtrl :TObject);
  end;

implementation

{ Interfaces }

constructor Interfaces.CrieObj;
begin
  aConsultaPaises := TConsultaPaises.Create(nil);
  aConsultaEstados := TConsultaEstados.Create(nil);
  aConsultaCidades := TConsultaCidades.Create(nil);

  oCadastroPaises := TCadastroPaises.Create(nil);
  oCadastroEstados := TCadastroEstados.Create(nil);
  oCadastroCidades := TCadastroCidades.Create(nil);

  aConsultaPaises.SetCadastro(oCadastroPaises);
  aConsultaEstados.SetCadastro(oCadastroEstados);
  aConsultaCidades.SetCadastro(oCadastroCidades);

 // oCadastroEstados.setConsultaPaises(aConsultapaises);
  //oCadastroCidades.setConsultaEstados(aConsultaEstados);

end;

destructor Interfaces.Destrua_se;
begin

end;

procedure Interfaces.PDCidades(pObj, pCtrl: TObject);
begin
  aConsultaCidades.conhecaObj(pobj, pCtrl);
  aConsultaCidades.ShowModal;
end;

procedure Interfaces.PDEstados(pObj, pCtrl: TObject);
begin
  aConsultaEstados.conhecaObj(pobj, pCtrl);
  aConsultaEstados.ShowModal;
end;

procedure Interfaces.PDPaises(pObj, pCtrl: TObject);
begin
  aConsultaPaises.conhecaObj(pobj, pCtrl);
  aConsultaPaises.ShowModal;
end;

end.
