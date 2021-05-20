unit NFe.Model.Fiscal.NFe.Command.Total;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandTotal = Class(TInterfacedObject, iCommand)
    private
      FParent : iModelFiscalNFe;
    public
      constructor Create(Parent : iModelFiscalNFe);
      destructor Destroy; override;
      class function New(Parent : iModelFiscalNFe): iCommand;
      function Execute : iCommand;
  end;

implementation

{ TModelFiscalNFeCommandTotal }

constructor TModelFiscalNFeCommandTotal.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNFeCommandTotal.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandTotal.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vBC   := 100;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMS := 18;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vBCST := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vST   := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vProd := 100;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vFrete:= 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vSeg  := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vDesc := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vII   := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vIPI  := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vPIS  := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vCOFINS := 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vOutro:= 0;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vNF   := 100;

  // lei da transparencia de impostos
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vTotTrib     := 0;

  // partilha do icms e fundo de produza
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vFCPUFDest   := 0.00;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMSUFDest  := 0.00;
  FParent.Component.NotaFiscal.NFe.Total.ICMSTot.vICMSUFRemet := 0.00;
end;

class function TModelFiscalNFeCommandTotal.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
