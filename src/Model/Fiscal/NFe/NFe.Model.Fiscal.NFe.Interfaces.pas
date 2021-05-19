unit NFe.Model.Fiscal.NFe.Interfaces;

interface

uses
  ACBrNFe,
  NFe.Model.Fiscal.NFe.Componentes.Interfaces;

type

  iModelFiscalNFe = interface
    ['{558F5ECE-E5EE-4B70-835E-DD60EAD51A95}']
    function Clear : iModelFiscalNFe;
    function Gerar : iModelFiscalNFe;
    function Component : iModelFiscalNFeComponentes<TACBrNFe>;
  end;

implementation

end.
