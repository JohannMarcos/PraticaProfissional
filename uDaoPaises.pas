unit uDaoPaises;

interface
uses uDao, uPaises, Data.DB, sysUtils, FireDAC.Stan.Param;
  type DaoPaises = class(Dao)
    private
    protected
    public
    constructor CrieObj;
    Destructor Destrua_se;
    function Salvar (pObj: TObject):      string; override;
    function Carregar (pObj: TObject):    string; override;
    function Pesquisar (pObj: TObject):   string; override;
    function getDS : TDataSource;                 override;
    procedure SetDm ( pObj : TObject);            override;
  end;

implementation

{ DaoPaises }



{ DaoPaises }

function DaoPaises.Carregar(pObj: TObject): string;
var mPais : Paises;
begin
 // try
 //   try
 //     mPais:= Paises (pObj);
  //    with aDm.QyPaises do
 //     begin
 //       mPais.SetCodigo(FieldByName('codigo').value);
 //       mPais.SetPais(FieldByName('pais').value);
 //       mPais.SetDDI(FieldByName('DDI').value);
//        mPais.SetSigla(FieldByName('sigla').value) ;
//        result:=''
//      end;

//    Except on e:exception do


//    end;
//  finally

//  end;
end;

constructor DaoPaises.CrieObj;
begin


end;

destructor DaoPaises.Destrua_se;
begin
  inherited;
end;

function DaoPaises.getDS: TDataSource;
begin
  inherited;
  if not aDM.QyPaises.Active then
    aDM.QyPaises.Active:= true;

 // result := aDM.DSPaises;
end;

function DaoPaises.Pesquisar(pObj: TObject): string;
var mPais : Paises;
    mSql : String;
begin
  inherited;
  mPais:= Paises(pObj);
  if length(mPais.GetPais) > 0 then
    mSql:= 'select * from PAISES where pais LIKE '+ quotedstr(mPais.GetPais)
  else if mPais.GetCodigo > 0 then
    mSql:= 'select * from PAISES where codigo = ' + quotedstr(inttostr(mPais.GetCodigo) )
  else
    mSql:= 'select * from PAISES order by Pais';
  aDM.QyPaises.SQL.Clear;
  aDM.QyPaises.SQL.add(mSql);
  aDM.QyPaises.execSQL;
  result:= '';
end;

function DaoPaises.Salvar(pObj: TObject): string;
Var mPais: Paises;
    mSql: string;
begin
  inherited;
//try
  mPais:= Paises(pObj);
  try
    if not aDM.Trans.Active then
      aDM.Trans.StartTransaction;
    with aDM.QyPaises do
    begin
      active:= false;
      sql.Clear;
      mSql:= 'insert into PAISES (pais, ddi, sigla) values ( :pais , :ddi , :sigla )';
      sql.Add(mSql);
      ParamByName('pais').value:= mPais.GetPais;
      ParamByName('ddi').value:= mPais.GetDDI;
      ParamByName('sigla').value:= mPais.GetSigla;
      ExecSQL;
    end;
    result:= '';
    aDM.Trans.Commit;
  except on E : Exception do
  begin
    aDM.Trans.Rollback;
    result := 'Erro ao Salvar: '+E.Message
  end;




  end;
    //if not aDM.QyPaises.Active then
      //aDM.QyPaises.Open;
    //if mPais.GetCodigo =  0 then
      //aDM.QyPaises.Edit
    //else
      //aDM.QyPaises.Edit;
    //aDM.QyPaisesPAIS.Value := mPais.GetPais;
    //aDm.QyPaisesDDI.Value:= mPais.GetDDI;
    //aDM.QyPaisesSIGLA.Value:= mPais.GetSigla;
    //aDM.QyPaises.Post;
    //aDM.Trans.Commit;
 // except E : Erro

 // end;

end;

procedure DaoPaises.SetDm(pObj: TObject);
begin
  inherited;

end;

end.
