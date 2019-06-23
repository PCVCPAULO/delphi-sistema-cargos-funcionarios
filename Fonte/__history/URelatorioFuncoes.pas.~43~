unit URelatorioFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, UDM_3LM,
  ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppPrnabl,
  ppCtrls;

type
  TfrmRelatorioFuncoes = class(TfrmPrincipal)
    rgOrdemRelatorioFuncoes: TRadioGroup;
    dbRelatorioFuncoes: TDBGrid;
    Button1: TButton;
    lblDataAtualFuncoes: TLabel;
    Timer1: TTimer;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBPipeline1: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLblDataHoraFuncoes: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    procedure FormShow(Sender: TObject);
    Procedure MontaRelatorio(pOrdem: Integer);
    procedure rgOrdemRelatorioFuncoesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmRelatorioFuncoes: TfrmRelatorioFuncoes;

implementation

{$R *.dfm}

uses UFuncoesDAO;

procedure TfrmRelatorioFuncoes.Button1Click(Sender: TObject);
begin
  inherited;
  ppDBPipeline1.DataSource := DataModule1.DataSource1;
  ppReport1.DataPipeline := ppDBPipeline1;
  ppLblDataHoraFuncoes.Caption := DateTimeToStr(Now);
  ppReport1.Print;
end;

procedure TfrmRelatorioFuncoes.FormShow(Sender: TObject);
begin
  inherited;
   MontaRelatorio(rgOrdemRelatorioFuncoes.ItemIndex);
end;

procedure TfrmRelatorioFuncoes.MontaRelatorio(pOrdem: Integer);
var
  relatorio: TFuncoesDAO;

begin
  try
    relatorio := TFuncoesDAO.Create;
    relatorio.RelatorioFuncoes(pOrdem);
    dbRelatorioFuncoes.DataSource := DataModule1.DataSource1;
  finally
    FreeAndNil(relatorio);
  end;
end;

procedure TfrmRelatorioFuncoes.rgOrdemRelatorioFuncoesClick(Sender: TObject);
begin
  inherited;
  MontaRelatorio(rgOrdemRelatorioFuncoes.ItemIndex);
end;

procedure TfrmRelatorioFuncoes.Timer1Timer(Sender: TObject);
begin
  inherited;
  lblDataAtualFuncoes.Caption := DateTimeToStr(Now);
end;

end.
