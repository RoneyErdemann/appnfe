unit NFe.Model.Fiscal.NFe.Componentes.Factory;

interface

Uses
  ACBrNFe,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces,
  NFe.Model.Fiscal.NFe.Componentes.ACbr;

Type
  TModelFiscalNFeComponentesFactory = Class(TInterfacedObject, iModelFiscalNFeFactory)
    private
      FACBr : TdmACBrNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelFiscalNFeFactory;
      function ACBr : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

uses
  System.SysUtils;

{ TModelFiscalNFeComponentesFactory }

function TModelFiscalNFeComponentesFactory.ACBr: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  if not Assigned(FACBr) then
    FACBr := TdmACBrNFe.Create(nil);
  Result := FACBr;
end;

constructor TModelFiscalNFeComponentesFactory.Create;
begin

end;

destructor TModelFiscalNFeComponentesFactory.Destroy;
begin
  if Assigned(FACBr) then
    FreeAndNil(FACBr);
  inherited;
end;

class function TModelFiscalNFeComponentesFactory.New: iModelFiscalNFeFactory;
begin
  Result := Self.Create;
end;

end.
