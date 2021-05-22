unit NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.Simples;

interface

Uses
  NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces,
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeRegrasFiscaisICMSSimples = Class(TInterfacedObject, iModelNFeRegras, iVisitor)
    private
      FParent: iModelFiscalNFe;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iVisitor;
      function ProdutoImpostoICMS: iModelNFeRegras;
      function Visit( Value: iModelFiscalNFe): iModelNFeRegras;
  end;

implementation

uses
  pcnConversao;

{ TModelFiscalNFeRegrasFiscaisICMSSimples }

constructor TModelFiscalNFeRegrasFiscaisICMSSimples.Create;
begin

end;

destructor TModelFiscalNFeRegrasFiscaisICMSSimples.Destroy;
begin

  inherited;
end;

class function TModelFiscalNFeRegrasFiscaisICMSSimples.New: iVisitor;
begin
  Result := Self.Create;
end;

function TModelFiscalNFeRegrasFiscaisICMSSimples.ProdutoImpostoICMS: iModelNFeRegras;
begin
  FParent.Component.Produto.Imposto.vTotTrib     := 0.00;
  FParent.Component.Produto.Imposto.ICMS.CSOSN   := csosn102;
  FParent.Component.Produto.Imposto.ICMS.orig    := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC   := dbiValorOperacao;
  FParent.Component.Produto.Imposto.ICMS.vBC     := 100;
  FParent.Component.Produto.Imposto.ICMS.pICMS   := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMS   := 0;
  FParent.Component.Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
  FParent.Component.Produto.Imposto.ICMS.pMVAST  := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBCST:= 0;
  FParent.Component.Produto.Imposto.ICMS.vBCST   := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBC  := 0;
end;

function TModelFiscalNFeRegrasFiscaisICMSSimples.Visit(
  Value: iModelFiscalNFe): iModelNFeRegras;
begin
  Result  := Self;
  FParent := Value;
end;

end.
