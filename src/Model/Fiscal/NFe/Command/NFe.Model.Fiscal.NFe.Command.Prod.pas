unit NFe.Model.Fiscal.NFe.Command.Prod;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces,
  NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces;

Type
  TModelFiscalNFeCommandProd = Class(TInterfacedObject, iCommand, iVisitable)
    private
      FParent : iModelFiscalNFe;
      FVisitor: iVisitor;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe): iCommand;
      function Execute : iCommand;
      function Accept(Value: iVisitor): iModelNFeRegras;
  end;

implementation

uses
  pcnConversaoNFe,
  pcnConversao,
  NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.RegineNormal,
  NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.Simples;

{ TModelFiscalNFeCommandProd }

function TModelFiscalNFeCommandProd.Accept(Value: iVisitor): iModelNFeRegras;
begin
  FVisitor := Value;
  Result   := FVisitor.Visit(FParent);
end;

constructor TModelFiscalNFeCommandProd.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
  Self.Accept(TModelFiscalNFeRegrasFiscaisICMSRegimeNormal.New);
end;

destructor TModelFiscalNFeCommandProd.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandProd.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddProduto;
  FParent.Component.Produto.Prod.cProd  := '123456';
  FParent.Component.Produto.Prod.cEAN   := '789652326646';
  FParent.Component.Produto.Prod.xProd  := 'TESTE DE PRODUTOS';
  FParent.Component.Produto.Prod.NCM    := '94051010';
  FParent.Component.Produto.Prod.EXTIPI := '';
  FParent.Component.Produto.Prod.CFOP   := '5101';
  FParent.Component.Produto.Prod.uCom   := 'UN';
  FParent.Component.Produto.Prod.qCom   := 1;
  FParent.Component.Produto.Prod.vUnCom := 100;
  FParent.Component.Produto.Prod.vProd  := 100;
  FParent.Component.Produto.Prod.cEANTrib := '789652326646';
  FParent.Component.Produto.Prod.uTrib  := 'UN';
  FParent.Component.Produto.Prod.qTrib  := 1;
  FParent.Component.Produto.Prod.vUnTrib:= 100;
  FParent.Component.Produto.Prod.vOutro := 0;
  FParent.Component.Produto.Prod.vFrete := 0;
  FParent.Component.Produto.Prod.vSeg   := 0;
  FParent.Component.Produto.Prod.vDesc  := 0;
  FParent.Component.Produto.Prod.CEST   := '11111';
  FParent.Component.Produto.infAdProd   := 'Informações Adicionais';

  FParent.Component.Produto.Imposto.ICMSUFDest.vBCUFDest   := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pFCPUFDest  := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSUFDest := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInter  := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.pICMSInterPart := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vFCPUFDest  := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFDest := 0.00;
  FParent.Component.Produto.Imposto.ICMSUFDest.vICMSUFRemet:= 0.00;

  FVisitor.Visit(FParent).ProdutoImpostoICMS;
end;

class function TModelFiscalNFeCommandProd.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
