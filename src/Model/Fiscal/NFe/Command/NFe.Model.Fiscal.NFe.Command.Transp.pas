unit NFe.Model.Fiscal.NFe.Command.Transp;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandTransp = Class(TInterfacedObject, iCommand)
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
  pcnConversao, pcnConversaoNFe;

{ TModelFiscalNFeCommandTransp }

constructor TModelFiscalNFeCommandTransp.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandTransp.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandTransp.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Transp.modFrete           := mfContaEmitente;
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.CNPJCPF := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xNome   := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.IE      := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xEnder  := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.xMun    := '';
  FParent.Component.NotaFiscal.NFe.Transp.Transporta.UF      := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.placa   := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.UF      := '';
  FParent.Component.NotaFiscal.NFe.Transp.veicTransp.RNTC    := '';
end;

class function TModelFiscalNFeCommandTransp.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
