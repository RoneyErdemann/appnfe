unit NFe.Model.Fiscal.NFe.Command.Exporta;

interface

uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandExporta = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandExporta }

constructor TModelFiscalNFeCommandExporta.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandExporta.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandExporta.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.exporta.UFembarq   := '';
  FParent.Component.NotaFiscal.NFe.exporta.xLocEmbarq := '';
end;

class function TModelFiscalNFeCommandExporta.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
