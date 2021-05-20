unit NFe.Model.Fiscal.NFe.Command.Compra;

interface

uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandCompra = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandCompra }

constructor TModelFiscalNFeCommandCompra.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandCompra.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandCompra.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.compra.xNEmp := '';
  FParent.Component.NotaFiscal.NFe.compra.xPed  := '';
  FParent.Component.NotaFiscal.NFe.compra.xCont := '';
end;

class function TModelFiscalNFeCommandCompra.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
