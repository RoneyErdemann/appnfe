unit NFe.Model.Fiscal.NFe.Componentes.ACbr;

interface

uses
  System.SysUtils,
  System.Classes,
  ACBrBase,
  ACBrDFe,
  ACBrNFe,
  ACBrDFeReport,
  ACBrDFeDANFeReport,
  ACBrNFeDANFEClass,
  ACBrNFeDANFeRLClass,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces;

type
  TdmACBrNFe = class(TDataModule, iModelFiscalNFeComponentes<TACBrNFe>)
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
  private
    { Private declarations }
  public
    { Public declarations }
    function _this : TACBrNFe;
    class function New : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmACBrNFe }

class function TdmACBrNFe.New: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := Self.Create(nil);
end;

function TdmACBrNFe._this: TACBrNFe;
begin
  Result := ACBrNFe;
end;

end.
