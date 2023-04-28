unit uDao;

interface
uses  uDM, Data.DB;
type DAO = class
  private
  protected
    aDM : TDM;
  public
    function Salvar (pObj: TObject)     : string;     virtual; abstract;
    function Carregar (pObj: TObject)   : string;     virtual; abstract;
    function Pesquisar ( pObj: TObject) : string;     virtual; abstract;
    procedure SetDm ( pObj : TObject);                virtual;
    function getDS : TDataSource;                     virtual;
end;

implementation

{ DAO }

function DAO.getDS: TDataSource;
begin

end;

procedure DAO.SetDm(pObj: TObject);
begin
  aDm:= TDM(pObj);
end;

end.
