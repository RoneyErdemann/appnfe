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
  NFe.Model.Fiscal.NFe.Command.Total in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Total.pas',
  NFe.Model.Fiscal.NFe.Command.Transp in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Transp.pas',
  NFe.Model.Fiscal.NFe.Command.Cobr.Dup in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Cobr.Dup.pas',
  NFe.Model.Fiscal.NFe.Command.TranspVol in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.TranspVol.pas',
  NFe.Model.Fiscal.NFe.Command.Cobr.Fat in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Cobr.Fat.pas',
  NFe.Model.Fiscal.NFe.Command.InfAdic in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.InfAdic.pas',
  NFe.Model.Fiscal.NFe.Command.InfAdicObsComp in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.InfAdicObsComp.pas',
  NFe.Model.Fiscal.NFe.Command.InfAdicObsFisco in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.InfAdicObsFisco.pas',
  NFe.Model.Fiscal.NFe.Command.Exporta in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Exporta.pas',
  NFe.Model.Fiscal.NFe.Command.Compra in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Compra.pas',
  NFe.Model.Fiscal.NFe.Command.Pagamento in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.Pagamento.pas',
  NFe.Model.Fiscal.NFe.Command.GerarNFe in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.GerarNFe.pas',
  NFe.Model.Fiscal.NFe.Command.EnviarNFe in 'Model\Fiscal\NFe\Command\NFe.Model.Fiscal.NFe.Command.EnviarNFe.pas',
  NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces in 'Model\Fiscal\NFe\RegrasFiscais\NFe.Model.Fiscal.NFe.RegrasFiscais.Interfaces.pas',
  NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.RegineNormal in 'Model\Fiscal\NFe\RegrasFiscais\ICMS\NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.RegineNormal.pas',
  NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.Simples in 'Model\Fiscal\NFe\RegrasFiscais\ICMS\NFe.Model.Fiscal.NFe.RegrasFiscais.ICMS.Simples.pas';

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
