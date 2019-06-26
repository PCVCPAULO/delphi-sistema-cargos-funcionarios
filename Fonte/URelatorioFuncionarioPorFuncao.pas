unit URelatorioFuncionarioPorFuncao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPrincipal, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  UDM_3LM, UFuncoesDAO, UFuncionarioDAO, UFuncoesModel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppReport, ppStrtch, ppSubRpt, Datasnap.DBClient, Datasnap.Provider;

type
  TfrmRelatorioFuncionarioPorFuncao = class(TfrmPrincipal)
    dbgMasterFuncao: TDBGrid;
    dbgDetalheFuncionario: TDBGrid;
    ppDBPipeline1: TppDBPipeline;
    btnImprimirRelatorioFuncionarioPorFuncao: TButton;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    dsFuncao: TDataSource;
    dsFuncionario: TDataSource;
    mdFuncionarios: TClientDataSet;
    dspFuncionario: TDataSetProvider;
    mdFuncoes: TClientDataSet;
    mdFuncoesCodigo: TIntegerField;
    mdFuncoesDescricao: TStringField;
    dspFuncoes: TDataSetProvider;
    mdFuncionariosCOD_FUNCAO: TIntegerField;
    mdFuncionariosNOME: TStringField;
    mdFuncionariosDT_NASCIMENTO: TSQLTimeStampField;
    mdFuncionariosSALARIO: TSingleField;
    procedure FormDestroy(Sender: TObject);
    procedure btnImprimirRelatorioFuncionarioPorFuncaoClick(Sender: TObject);
    Procedure montarMasterFuncoes;
    procedure montaDetalheFuncionarios;
    procedure FormShow(Sender: TObject);
    procedure mdFuncoesAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    funcoes: TFuncoesDAO;
    funcionario : TFuncionarioDAO;
    funcaoModel : TFuncoesModel;
  public
    { Public declarations }
  end;

var
  frmRelatorioFuncionarioPorFuncao: TfrmRelatorioFuncionarioPorFuncao;

implementation

{$R *.dfm}

procedure TfrmRelatorioFuncionarioPorFuncao.btnImprimirRelatorioFuncionarioPorFuncaoClick(Sender: TObject);
begin
  inherited;
  funcoes.RelatorioFuncionarioPorFuncaoImprimir;
  ppDBPipeline1.DataSource := DataModule1.DataSource3;
  ppReport1.DataPipeline := ppDBPipeline1;
  ppReport1.PreviewFormSettings.ZoomPercentage := 100;
  ppReport1.Print;
end;

procedure TfrmRelatorioFuncionarioPorFuncao.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(funcoes);
  FreeAndNil(funcionario);
end;

procedure TfrmRelatorioFuncionarioPorFuncao.FormShow(Sender: TObject);
begin
  inherited;
  montarMasterFuncoes;
  montaDetalheFuncionarios;
  mdFuncoes.Active := True;
  mdFuncionarios.Active := True;
end;

procedure TfrmRelatorioFuncionarioPorFuncao.mdFuncoesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  funcionario := TFuncionarioDAO.Create;
  funcionario.RelatorioDetalheFuncionarioPorFuncao(mdFuncoesCodigo.AsInteger);
  dbgDetalheFuncionario.DataSource := DataModule1.DataSource2;
end;

procedure TfrmRelatorioFuncionarioPorFuncao.montaDetalheFuncionarios;
begin
  if Assigned(funcionario) then
    FreeAndNil(funcionario);

  funcionario := TFuncionarioDAO.Create;
  funcionario.RelatorioDetalheFuncionarioPorFuncao;
end;

procedure TfrmRelatorioFuncionarioPorFuncao.montarMasterFuncoes;
begin
  if Assigned(funcoes) then
    FreeAndNil(funcoes);

  funcoes := TFuncoesDAO.Create;
  funcoes.RelatorioMasterFuncao;
  dbgMasterFuncao.SetFocus;
end;

end.
