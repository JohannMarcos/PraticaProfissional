unit uCtrlPaises;

interface
  uses uController, uDaoPaises, Data.DB;
  type ctrlPaises = class (Controller)
    private
    protected
    aDaoPaises: DaoPaises;
    public
    constructor CrieObj;
    Destructor Destrua_se;
    function Salvar (pObj: TObject):     string; override;
    function Carregar (pObj: TObject):   string; override;
    function Pesquisar ( pObj: TObject): string; override;
    procedure SetDm ( pObj : TObject);           override;
    function getDS : TDataSource;                override;

  end;

implementation

{ ctrlPaises }

function ctrlPaises.Carregar(pObj: TObject): string;
begin
  inherited;

end;

constructor ctrlPaises.CrieObj;
begin
  inherited;
  aDaoPaises := DaoPaises.CrieObj;
end;

destructor ctrlPaises.Destrua_se;
begin
  inherited;
  aDaoPaises.Destrua_se;
end;

function ctrlPaises.getDS: TDataSource;
begin
  inherited;
  result:= aDaoPaises.getDS;
end;

function ctrlPaises.Pesquisar(pObj: TObject): string;
begin
  inherited;
   result := aDaoPaises.Pesquisar(pObj) ;

end;

function ctrlPaises.Salvar(pObj: TObject): string;
begin
  inherited;
  result:= aDaoPaises.Salvar(pObj);


end;

procedure ctrlPaises.SetDm(pObj: TObject);
begin
  inherited;
    aDaoPaises.SetDM(pObj);

end;

end.
