unit NFe.Model.Fiscal.NFe;

interface

Uses
  ACBrNFe,
  NFe.Model.Fiscal.NFe.Interfaces,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces;

Type
  TModelFiscalNFe = Class(TInterfacedObject, iModelFiscalNFe)
    private
      FCompFactory : iModelFiscalNFeFactory;
      FComponente  : iModelFiscalNFeComponentes<TACBrNFe>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelFiscalNFe;
      function Clear : iModelFiscalNFe;
      function Gerar : iModelFiscalNFe;
      function Component : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

uses
  NFe.Model.Fiscal.NFe.Componentes.Factory,
  NFe.Model.Fiscal.NFe.Invoker,
  NFe.Model.Fiscal.NFe.Command.Geral,
  NFe.Model.Fiscal.NFe.Command.Ide,
  NFe.Model.Fiscal.NFe.Command.Emit,
  NFe.Model.Fiscal.NFe.Command.Dest,
  NFe.Model.Fiscal.NFe.Command.Prod,
  NFe.Model.Fiscal.NFe.Command.Total,
  NFe.Model.Fiscal.NFe.Command.Transp,
  NFe.Model.Fiscal.NFe.Command.Cobr.Dup;

{ TModelFiscalNFe }

function TModelFiscalNFe.Clear: iModelFiscalNFe;
begin
  Result := Self;
  FComponente._this.NotasFiscais.Clear;
end;

function TModelFiscalNFe.Component: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := FComponente;
end;

constructor TModelFiscalNFe.Create;
begin
  FCompFactory := TModelFiscalNFeComponentesFactory.New;
  FComponente  := FCompFactory.ACBr;
end;

destructor TModelFiscalNFe.Destroy;
begin

  inherited;
end;

function TModelFiscalNFe.Gerar: iModelFiscalNFe;
begin
  Result := Self;
  FComponente._this.NotasFiscais.Clear;
  FComponente.AddNotaFiscal;
  TModelFiscalNFeInvoker.New
    .Add(TModelFiscalNFeCommandGeral.New(Self))
    .Add(TModelFiscalNFeCommandIde.New(self))
    .Add(TModelFiscalNFeCommandEmitente.New(Self))
    .Add(TModelFiscalNFeCommandDest.New(Self))
    .Add(TModelFiscalNFeCommandProd.New(Self))
    .Add(TModelFiscalNFeCommandTotal.New(Self))
    .Add(TModelFiscalNFeCommandTransp.New(Self))
    .Add(TModelFiscalNFeCommandCobrDup.New(Self))
  .Execute;
  FComponente._this.NotasFiscais.GerarNFe;
end;

class function TModelFiscalNFe.New: iModelFiscalNFe;
begin
  Result := Self.Create;
end;

end.
