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

  iCommand = interface
    ['{C687973D-0CF9-4FD8-A3BA-E22C09E66330}']
    function Execute: iCommand;
  end;

  iInvoker = interface
    ['{0625C46A-290F-4CE2-AD1F-ADBC693BEEA0}']
    function Add( Value: iCommand ): iInvoker;
    function Execute : iInvoker;
  end;

implementation

end.
