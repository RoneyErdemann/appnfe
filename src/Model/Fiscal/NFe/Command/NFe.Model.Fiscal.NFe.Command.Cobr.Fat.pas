unit NFe.Model.Fiscal.NFe.Command.Cobr.Fat;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandCobrFat = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandCobrFat }

constructor TModelFiscalNFeCommandCobrFat.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandCobrFat.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandCobrFat.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.nFat := '1001'; // 'Numero da Fatura'
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vOrig := 100;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vDesc := 0;
  FParent.Component.NotaFiscal.NFe.Cobr.Fat.vLiq  := 100;
end;

class function TModelFiscalNFeCommandCobrFat.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
