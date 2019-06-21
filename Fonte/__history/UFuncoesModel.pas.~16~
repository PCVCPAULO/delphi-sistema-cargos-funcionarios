unit UFuncoesModel;

interface
  type
    TFuncoesModel = class
      private
         // Campos
         Fcodigo : Integer;
         FDescricao : string;

         // Getters
         function getCodigo: Integer;
         function getDescricao: string;

         // Setters
         procedure setCodigo(Const Value: Integer);
         procedure setDescricao(Const Value: string);

       public
         // Proprieddades
         Property CodigoFuncao    : Integer read getCodigo     write setCodigo;
         Property DescricaoFuncao : string  read getDescricao  write setDescricao;

       end;


implementation

{ TFuncoesModel }

uses UFuncoesDAO;

function TFuncoesModel.getCodigo: Integer;
begin
  Result := Fcodigo;
end;

function TFuncoesModel.getDescricao: string;
begin
  Result := FDescricao;
end;

procedure TFuncoesModel.setCodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TFuncoesModel.setDescricao(const Value: string);
begin
  FDescricao := Value;
end;

end.
