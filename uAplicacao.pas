unit uAplicacao;

interface
  uses uPrincipal, uInterfaces, uPaises, uCtrlPaises, uDM;//, uEstados, uCidades;
  type Aplicacao = class
    private
    protected
    oPrincipal :TfrmPrincipal;
    aInterface :Interfaces;
    oPais : Paises;
    aCtrlPaises:ctrlPaises;

    aDM: TDM;
    //oEstado: Estados;
    //aCidade: Cidades;


    public
    constructor CrieObj;
    Destructor Destrua_se;
    procedure Execute_se;
  end;

implementation

{ Aplicacao }

constructor Aplicacao.CrieObj;
begin
  oPrincipal := TfrmPrincipal.create(nil);
  aInterface:= interfaces.CrieObj;
  oPais := Paises.crieObj;
  aCtrlPaises:= ctrlPaises.CrieObj;

  aDM:= TDM.Create(nil);
 // oEstado:= Estados.CrieObj;
 // aCidade:= Cidades.CrieObj;
end;

destructor Aplicacao.Destrua_se;
begin
  oPrincipal.FreeInstance;
  aInterface.destrua_se;
  oPais.Destrua_se;
  aCtrlPaises.Destrua_se
  //oEstado.Destrua_se;
  //aCidade.Destrua_se;
end;

procedure Aplicacao.Execute_se;
begin
  aCtrlPaises.SetDm(aDM);
  oPrincipal.ConhecaObj(oPais, aInterface, aCtrlPaises );//oEstado, aCidade);
  oprincipal.ShowModal
end;

end.
