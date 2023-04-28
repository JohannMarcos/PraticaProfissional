unit uController;

interface
uses Data.DB;
  type Controller = class
    private
    protected
    function Salvar (pObj: TObject): string;     virtual; abstract;
    function Carregar (pObj: TObject): string;   virtual; abstract;
    function Pesquisar ( pObj: TObject): string; virtual; abstract;
    procedure SetDm ( pObj : TObject);           virtual; abstract;
    function getDS : TDataSource;                 virtual;
  end;

implementation

{ Controller }



{ Controller }

function Controller.getDS: TDataSource;
begin

end;

end.
