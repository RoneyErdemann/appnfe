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
  ACBrNFeNotasFiscais,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces;

type
  TdmACBrNFe = class(TDataModule, iModelFiscalNFeComponentes<TACBrNFe>)
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFeRL: TACBrNFeDANFeRL;
  private
    { Private declarations }
    FNotaFiscal : NotaFiscal;
  public
    { Public declarations }
    function _this : TACBrNFe;
    function AddNotaFiscal : NotaFiscal;
    function NotaFiscal : NotaFiscal;
    class function New : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmACBrNFe }

function TdmACBrNFe.AddNotaFiscal: NotaFiscal;
begin
  FNotaFiscal := ACBrNFe.NotasFiscais.Add;
  Result      := FNotaFiscal;
end;

class function TdmACBrNFe.New: iModelFiscalNFeComponentes<TACBrNFe>;
begin
  Result := Self.Create(nil);
end;

function TdmACBrNFe.NotaFiscal: NotaFiscal;
begin
  Result := FNotaFiscal;
end;

function TdmACBrNFe._this: TACBrNFe;
begin
  Result := ACBrNFe;
end;

end.
