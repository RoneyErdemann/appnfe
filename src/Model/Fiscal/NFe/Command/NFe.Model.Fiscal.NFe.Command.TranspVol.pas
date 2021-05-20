unit NFe.Model.Fiscal.NFe.Command.TranspVol;

interface

Uses
  NFe.Model.Fiscal.NFe.Interfaces;

Type
  TModelFiscalNFeCommandTranspVol = Class(TInterfacedObject, iCommand)
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
  pcnConversao,
  pcnConversaoNFe;

{ TModelFiscalNFeCommandTranspVol }

constructor TModelFiscalNFeCommandTranspVol.Create(Parent : iModelFiscalNFe);
begin
  FParent := Parent
end;

destructor TModelFiscalNFeCommandTranspVol.Destroy;
begin

  inherited;
end;

function TModelFiscalNFeCommandTranspVol.Execute: iCommand;
begin
  Result := Self;
  FParent.Component.AddTranspVol;
  FParent.Component.TranspVol.qVol  := 1;
  FParent.Component.TranspVol.esp   := 'Especie';
  FParent.Component.TranspVol.marca := 'Marca';
  FParent.Component.TranspVol.nVol  := 'Numero';
  FParent.Component.TranspVol.pesoL := 100;
  FParent.Component.TranspVol.pesoB := 110;
end;

class function TModelFiscalNFeCommandTranspVol.New(Parent : iModelFiscalNFe): iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
