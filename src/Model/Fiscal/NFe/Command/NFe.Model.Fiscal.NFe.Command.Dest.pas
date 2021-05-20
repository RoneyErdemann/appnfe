unit NFe.Model.Fiscal.NFe.Command.Dest;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandDest = Class(TInterfacedObject, iCommand)
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

{ TModelFiscalNFeCommandDest }

constructor TModelFiscalNFeCommandDest.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandDest.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandDest.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.NotaFiscal.NFe.Dest.CNPJCPF           := '05481336000137';
  FParent.Component.NotaFiscal.NFe.Dest.IE                := '';
  FParent.Component.NotaFiscal.NFe.Dest.ISUF              := '';
  FParent.Component.NotaFiscal.NFe.Dest.xNome             := 'D.J. COM. E TESTE';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.fone    := '1532599600';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.CEP     := 65000000;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xLgr    := 'Rua teste';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.nro     := '123';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xCpl    := '';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xBairro := 'Centro';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.cMun    := 3554003;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xMun    := 'FORTALEZA';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.uf      := 'CE';
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.cPais   := 1058;
  FParent.Component.NotaFiscal.NFe.Dest.EnderDest.xPais   := 'BRASIL';
end;

class function TModelFiscalNFeCommandDest.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
