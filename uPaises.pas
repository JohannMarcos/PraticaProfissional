unit uPaises;

interface
  uses uPai, SysUtils;
  type Paises = class (PAI)
    private
    protected
    pais:string;
    ddi: string;
    sigla:string;
    public
      constructor crieObj;
      constructor CrieInit (pCodigo, pCodUser: integer; pPais, pDDI, pSigla: string; pDatCad, pDatUltAlt :TDateTime);
      destructor Destrua_se;
      procedure SetPais(pPais :String);
      procedure SetDDI (pDDI:string);
      procedure SetSigla (pSigla:string);
      function GetPais : string;
      function GetDDI: string;
      function GetSigla: string;
      function Clone : Paises;
  end;

implementation

{ Paises }

function Paises.Clone: Paises;
begin
  result := Paises.CrieInit(codigo, codUser, pais, ddi, sigla, datCad, datUltAlt);
end;

constructor Paises.CrieInit(pCodigo, pCodUser: integer; pPais, pDDI,
  pSigla: string; pDatCad, pDatUltAlt: TDateTime);
begin
  codigo:= pCOdigo;
  codUser:= pCodUser;
  pais:= pPais;
  ddi:= pDDI;
  sigla:= pSigla;
  datCad:= pDatCad;
  datUltAlt:= pDatUltAlt;
end;

constructor Paises.crieObj;
begin
  codigo:= 0;
  codUser:= 0;
  pais:= '';
  ddi:= '';
  sigla:= '';
  datCad:= Now;
  datUltAlt:= Date;
end;

destructor Paises.Destrua_se;
begin

end;

function Paises.GetDDI: string;
begin
  result:= ddi;
end;

function Paises.GetPais: string;
begin
  result:= pais;
end;

function Paises.GetSigla: string;
begin
  result:= sigla;
end;

procedure Paises.SetDDI(pDDI: string);
begin
  ddi:= pDDI;
end;

procedure Paises.SetPais(pPais: String);
begin
  pais:= pPais;
end;

procedure Paises.SetSigla(pSigla: string);
begin
  sigla:=pSigla;
end;

end.
