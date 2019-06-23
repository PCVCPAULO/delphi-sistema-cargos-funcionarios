unit URelatorioFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter,
  ppVar;

type
  TfrmRelatorioFuncionarios = class(TfrmPrincipal)
    rgOrdemRelatorioFuncionarios: TRadioGroup;
    lblDataAtualFuncionarios: TLabel;
    Timer1: TTimer;
    dbRelatorioFuncionarios: TDBGrid;
    Button1: TButton;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLblDataHoraRelatorioFuncionario: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    procedure montarRelatorioFuncionarios(pOrdem: Integer);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure rgOrdemRelatorioFuncionariosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioFuncionarios: TfrmRelatorioFuncionarios;

implementation

{$R *.dfm}

uses UFuncionarioDAO, UDM_3LM;

{ TfrmRelatorioFuncionarios }

procedure TfrmRelatorioFuncionarios.Button1Click(Sender: TObject);
begin
  inherited;
  ppDBPipeline1.DataSource := DataModule1.DataSource2;
  ppReport1.DataPipeline := ppDBPipeline1;
  ppLblDataHoraRelatorioFuncionario.Caption := DateTimeToStr(Now);
  ppReport1.Print;
end;

procedure TfrmRelatorioFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  dbRelatorioFuncionarios.DataSource := DataModule1.DataSource2;
  montarRelatorioFuncionarios(rgOrdemRelatorioFuncionarios.ItemIndex);
end;

procedure TfrmRelatorioFuncionarios.montarRelatorioFuncionarios(pOrdem: Integer);
var
  relatorio: TFuncionarioDAO;

begin
  try
    relatorio := TFuncionarioDAO.Create;
    relatorio.relatorioFuncionarios(pOrdem);
  finally
    FreeAndNil(relatorio);
  end;
end;

procedure TfrmRelatorioFuncionarios.rgOrdemRelatorioFuncionariosClick(Sender: TObject);
begin
  inherited;
  montarRelatorioFuncionarios(rgOrdemRelatorioFuncionarios.ItemIndex)
end;

procedure TfrmRelatorioFuncionarios.Timer1Timer(Sender: TObject);
begin
  inherited;
  lblDataAtualFuncionarios.Caption := DateTimeToStr(Now);
end;

end.
