unit uPai;

interface
  uses DateUtils, SysUtils;
  type pai = class
    private
    protected
      codigo: integer;
      datCad: TDateTime;
      datUltAlt: TDateTime;
      codUser: integer;
    public
      constructor crieObj;
      destructor destrua_se;
      procedure SetCodigo (pCodigo : integer);
      procedure SetDatCad (pDatCad : TDateTime);
      procedure SetDatUltAlt (pDatUltAlt : TDateTime);
      procedure SetCodUser (pCodUser: integer);
      Function GetCodigo : Integer;
      function GetDatCad : TDateTime;
      function GetDatUltAlt: TDateTime;
      function GetCodUser : integer;

  end;

implementation

{ pai }

constructor pai.crieObj;
begin
  codigo:= 0;
  codUser:= 0;
  datCad:= now;
  datUltAlt:= date;
end;

destructor pai.destrua_se;
begin

end;

function pai.GetCodigo: Integer;
begin
  result := codigo;
end;

function pai.GetCodUser: integer;
begin
  result := codUser;
end;

function pai.GetDatCad: TDateTime;
begin
  result := datCad;
end;

function pai.GetDatUltAlt: TDateTime;
begin
  result := datUltAlt;
end;

procedure pai.SetCodigo(pCodigo: integer);
begin
  codigo := pCodigo;
end;

procedure pai.SetCodUser(pCodUser: integer);
begin
  codUser:= pCodUser;
end;

procedure pai.SetDatCad(pDatCad: TDateTime);
begin
  datCad:= pDatCad;
end;

procedure pai.SetDatUltAlt(pDatUltAlt: TDateTime);
begin
  datUltAlt:= pDatUltAlt;
end;

end.
