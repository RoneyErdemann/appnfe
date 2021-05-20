program AppNFe;

uses
  Vcl.Forms,
  NFe.View.Main in 'View\Pages\NFe.View.Main.pas' {Form1},
  NFe.Model.Fiscal.NFe.Componentes.ACbr in 'Model\Fiscal\NFe\Componentes\ACbr\NFe.Model.Fiscal.NFe.Componentes.ACbr.pas' {dmACBrNFe: TDataModule},
  NFe.Model.Fiscal.NFe.Componentes.Interfaces in 'Model\Fiscal\NFe\Componentes\NFe.Model.Fiscal.NFe.Componentes.Interfaces.pas',
  NFe.Model.Fiscal.NFe.Componentes.Factory in 'Model\Fiscal\NFe\Componentes\NFe.Model.Fiscal.NFe.Componentes.Factory.pas',
  NFe.Model.Fiscal.NFe in 'Model\Fiscal\NFe\NFe.Model.Fiscal.NFe.pas',
  NFe.Model.Fiscal.NFe.Interfaces in 'Model\Fiscal\NFe\NFe.Model.Fiscal.NFe.Interfaces.pas',
  NFe.Model.Fiscal.NFe.Invoker in 'Model\Fiscal\NFe\NFe.Model.Fiscal.NFe.Invoker.pas',
  NFe.Model.Fiscal.NFe.Command.Geral in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Geral.pas',
  NFe.Model.Fiscal.NFe.Command.Ide in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Ide.pas',
  NFe.Model.Fiscal.NFe.Command.Emit in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Emit.pas',
  NFe.Model.Fiscal.NFe.Command.Prod in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Prod.pas',
  NFe.Model.Fiscal.NFe.Command.Dest in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Dest.pas',
  NFe.Model.Fiscal.NFe.Command.Total in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Total.pas';

{$R *.res}

begin
  Application.Initialize;
  {$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
