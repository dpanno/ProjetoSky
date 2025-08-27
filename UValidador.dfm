object ValidarPrazOrdem: TValidarPrazOrdem
  Left = 0
  Top = 0
  Caption = 'Calculador de SLA'
  ClientHeight = 299
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 635
    object btnValOrdem: TSpeedButton
      Left = 15
      Top = 8
      Width = 162
      Height = 27
      Caption = 'Validar ordens do cliente'
      OnClick = btnValOrdemClick
    end
  end
  object PnlCrudCliente: TPanel
    Left = 0
    Top = 41
    Width = 600
    Height = 258
    Align = alClient
    TabOrder = 1
    ExplicitTop = -81
    ExplicitWidth = 635
    ExplicitHeight = 380
    object Label6: TLabel
      Left = 15
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btnBuscarCliente: TButton
      Left = 142
      Top = 24
      Width = 75
      Height = 21
      Caption = 'Busca Cliente'
      TabOrder = 0
      OnClick = btnBuscarClienteClick
    end
    object edtCliente: TEdit
      Left = 15
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
end
