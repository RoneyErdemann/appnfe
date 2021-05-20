unit NFe.Model.Fiscal.NFe.Command.Cobr.Dup;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandCobrDup = Class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe): iCommand;
      function Execute : iCommand;
  end;

implementation

uses
  System.SysUtils,
  pcnConversao,
  pcnConversaoNFe;

{ TModelFiscalNFeCommandCobrDup }

constructor TModelFiscalNFeCommandCobrDup.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandCobrDup.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandCobrDup.Execute: iCommand;
var
  I : Integer;
begin
  Result := Self;
  for I := 1 to 2 do
  begin
    FParent.Component.AddDuplicata;
    FParent.Component.Duplicata.nDup  := '1234' + InttoStr(I);
    FParent.Component.Duplicata.dVenc := Now +10;
    FParent.Component.Duplicata.vDup  := 50.00;
  end;
end;

class function TModelFiscalNFeCommandCobrDup.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
