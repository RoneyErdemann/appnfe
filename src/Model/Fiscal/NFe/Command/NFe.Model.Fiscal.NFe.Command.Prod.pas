unit NFe.Model.Fiscal.NFe.Command.Prod;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandProd = Class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe,
  pcnConversao;

{ TModelFiscalNFeCommandProd }

constructor TModelFiscalNFeCommandProd.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
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

  FParent.Component.Produto.Imposto.vTotTrib     := 0.00;
  FParent.Component.Produto.Imposto.ICMS.CST     := cst00;
  FParent.Component.Produto.Imposto.ICMS.orig    := oeNacional;
  FParent.Component.Produto.Imposto.ICMS.modBC   := dbiValorOperacao;
  FParent.Component.Produto.Imposto.ICMS.vBC     := 100;
  FParent.Component.Produto.Imposto.ICMS.pICMS   := 18;
  FParent.Component.Produto.Imposto.ICMS.vICMS   := 18;
  FParent.Component.Produto.Imposto.ICMS.modBCST := dbisMargemValorAgregado;
  FParent.Component.Produto.Imposto.ICMS.pMVAST  := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBCST:= 0;
  FParent.Component.Produto.Imposto.ICMS.vBCST   := 0;
  FParent.Component.Produto.Imposto.ICMS.pICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.vICMSST := 0;
  FParent.Component.Produto.Imposto.ICMS.pRedBC  := 0;
end;

class function TModelFiscalNFeCommandProd.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
