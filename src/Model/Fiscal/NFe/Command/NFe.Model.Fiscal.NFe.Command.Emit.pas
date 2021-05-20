unit NFe.Model.Fiscal.NFe.Command.Emit;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandEmitente = Class(TInterfacedObject, iCommand)
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
  pcnConversao;

{ TModelFiscalNFeCommandEmitente }

constructor TModelFiscalNFeCommandEmitente.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandEmitente.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandEmitente.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Emit.IE  := '';
  FParent.Component.NotaFiscal.NFe.Emit.xNome := '';
  FParent.Component.NotaFiscal.NFe.Emit.xFant := '';
  FParent.Component.NotaFiscal.NFe.Emit.CNPJCPF := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.fone := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.CEP := 65000000;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xLgr := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.nro := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xCpl := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xBairro := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.cMun := 1234;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xMun := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.uf := '';
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.cPais := 1058;
  FParent.Component.NotaFiscal.NFe.Emit.EnderEmit.xPais := 'BRASIL';
  FParent.Component.NotaFiscal.NFe.Emit.IEST            := '';
  FParent.Component.NotaFiscal.NFe.Emit.IM              := '2648800';
  FParent.Component.NotaFiscal.NFe.Emit.CNAE            := '6201500';
  FParent.Component.NotaFiscal.NFe.Emit.CRT             := crtRegimeNormal;
end;

class function TModelFiscalNFeCommandEmitente.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
