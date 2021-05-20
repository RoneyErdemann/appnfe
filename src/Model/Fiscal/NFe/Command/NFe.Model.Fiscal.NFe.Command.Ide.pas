unit NFe.Model.Fiscal.NFe.Command.Ide;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandIde = Class(TInterfacedObject, iCommand)
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
  pcnConversaoNFe,
  pcnConversao;

{ TModelFiscalNFeCommandIde }

constructor TModelFiscalNFeCommandIde.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent;
end;

destructor TModelFiscalNFeCommandIde.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandIde.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Ide.cNF    := 0;
  FParent.Component.NotaFiscal.NFe.Ide.natOp  := 'VENDA PRODUÇÃO DO ESTAB.';
  FParent.Component.NotaFiscal.NFe.Ide.indPag := ipVista;
  FParent.Component.NotaFiscal.NFe.Ide.modelo := 55;
  FParent.Component.NotaFiscal.NFe.Ide.serie  := 1;
  FParent.Component.NotaFiscal.NFe.Ide.nNF    := 0;
  FParent.Component.NotaFiscal.NFe.Ide.dEmi   := Date;
  FParent.Component.NotaFiscal.NFe.Ide.dSaiEnt:= Date;
  FParent.Component.NotaFiscal.NFe.Ide.hSaiEnt:= Now;
  FParent.Component.NotaFiscal.NFe.Ide.tpNF   := tnSaida;
  FParent.Component.NotaFiscal.NFe.Ide.tpEmis := teNormal;
  FParent.Component.NotaFiscal.NFe.Ide.tpAmb  := taHomologacao;
  FParent.Component.NotaFiscal.NFe.Ide.verProc:= '1.0.0.0';
  FParent.Component.NotaFiscal.NFe.Ide.cUF    := UFtoCUF('CE');
  FParent.Component.NotaFiscal.NFe.Ide.cMunFG := 0;
  FParent.Component.NotaFiscal.NFe.Ide.finNFe := fnNormal;
  if Assigned(FParent.Component._this.DANFE) then
    FParent.Component.NotaFiscal.NFe.Ide.tpImp := FParent.Component._this.DANFE.TipoDANFE;
end;

class function TModelFiscalNFeCommandIde.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
