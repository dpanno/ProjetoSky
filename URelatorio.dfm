object Relatorio: TRelatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de ordens'
  ClientHeight = 421
  ClientWidth = 635
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
    Width = 635
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnImprimir: TSpeedButton
      Left = 7
      Top = 8
      Width = 106
      Height = 27
      Caption = 'Imprimir'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFF08F7F7
        F7F7F7F7F7F708FFFFFFFFFFFFA4F7070707070707F7A4FFFFFFFFFFFFA408A4
        9B9B9B9BA408A4FFFFFFF6F7A45208F7A4A4A407FF0852A4F7FFF70000000807
        F7F7F7070808000000F7F700000008F7A4A4A4A4F708000000F7F70000005B9B
        9B9B9B9B9B5B000000F7F70000000000000000000000000000F7F70000000000
        000000000000529B00F7F70000000000000000000000525B00F7070000000000
        00000000000000000007FF08079BF7070707070707F79B0708FFFFFFFFA408FF
        FFFFFFFFFF08A4FFFFFFFFFFFFA408FFFFFFFFFFFF08A4FFFFFFFFFFFFA4F707
        0707070707F7A4FFFFFFFFFFFF08F7F7F7F7F7F7F7F708FFFFFF}
    end
  end
  object PnlCrudCliente: TPanel
    Left = 0
    Top = 41
    Width = 635
    Height = 380
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 83
      Height = 13
      Caption = 'Data de abertura'
    end
    object Label3: TLabel
      Left = 117
      Top = 8
      Width = 65
      Height = 13
      Caption = 'Data Prevista'
    end
    object Label6: TLabel
      Left = 383
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 218
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Valor Total'
    end
    object edtClienteOrd: TDBEdit
      Left = 383
      Top = 24
      Width = 121
      Height = 21
      DataField = 'CLIENTE_ID'
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnBuscarCliente: TButton
      Left = 510
      Top = 24
      Width = 75
      Height = 21
      Caption = 'Busca Cliente'
      TabOrder = 1
    end
    object edtDataAbertura: TEdit
      Left = 16
      Top = 24
      Width = 95
      Height = 21
      TabOrder = 2
      Text = 'edtDataAbertura'
    end
    object edtDataPrevista: TEdit
      Left = 117
      Top = 24
      Width = 95
      Height = 21
      TabOrder = 3
      Text = 'edtDataPrevista'
    end
    object rgStatus: TRadioGroup
      Left = 16
      Top = 51
      Width = 113
      Height = 105
      Caption = 'Status'
      ItemIndex = 4
      Items.Strings = (
        'Aberta'
        'Em Andamento'
        'Conclu'#237'da'
        'Cancelada'
        'Todos')
      TabOrder = 4
    end
    object edtVlrTotal: TEdit
      Left = 218
      Top = 24
      Width = 95
      Height = 21
      TabOrder = 5
      Text = 'edtVlrTotal'
    end
    object ComboBox1: TComboBox
      Left = 319
      Top = 24
      Width = 58
      Height = 21
      TabOrder = 6
      Text = 'ComboBox1'
      Items.Strings = (
        '='
        '>='
        '<=')
    end
  end
  object frxRelatorio: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45894.776678958300000000
    ReportOptions.LastChange = 45894.867036875000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 169
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MDRelatorio: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CLIENTE_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE_ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTE_ID"]')
        end
        object frxDBDataset1DATA_ABERTURA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_ABERTURA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_ABERTURA"]')
        end
        object frxDBDataset1DATA_PREVISTA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_PREVISTA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_PREVISTA"]')
        end
        object frxDBDataset1DATA_FECHAMENTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 207.874150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_FECHAMENTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DATA_FECHAMENTO"]')
        end
        object frxDBDataset1STATUS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 291.023810000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
        end
        object frxDBDataset1DESCRICAO_PROBLEMA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO_PROBLEMA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO_PROBLEMA"]')
        end
        object frxDBDataset1VALOR_TOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 650.079160000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_TOTAL"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C625C66305C667332342052
            656C61745C27663372696F206465206F7264656E732064652073657276695C27
            65376F735C62305C667331365C7061720D0A7D0D0A00}
        end
        object Rich2: TfrxRichView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620436C69
            656E74655C7061720D0A5C7061720D0A7D0D0A00}
        end
        object Rich3: TfrxRichView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362044742E
            2041626572747572615C7061720D0A7D0D0A00}
        end
        object Rich4: TfrxRichView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362044742E
            2050726576697374615C7061720D0A7D0D0A00}
        end
        object Rich5: TfrxRichView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362044742E
            2046656368616D656E746F5C7061720D0A7D0D0A00}
        end
        object Rich6: TfrxRichView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620537461
            7475735C7061720D0A7D0D0A00}
        end
        object Rich7: TfrxRichView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 37.795300000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673313620446573
            6372695C2765375C2765336F20646F2070726F626C656D615C7061720D0A7D0D
            0A00}
        end
        object Rich8: TfrxRichView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 37.795300000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C667331362056616C
            6F7220746F74616C5C7061720D0A7D0D0A00}
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR_TOTAL">,MDRelatorio,2)]')
          ParentFont = False
        end
        object Rich9: TfrxRichView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C625C66305C667332342056
            616C6F7220746F74616C20646173206F7264656E733A5C62305C667331365C70
            61720D0A7D0D0A00}
        end
        object Rich10: TfrxRichView
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313034367B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205461686F6D613B7D7D0D0A7B5C2A5C
            67656E657261746F722052696368656432302031302E302E31393034317D5C76
            6965776B696E64345C756331200D0A5C706172645C66305C6673323020505C27
            653167696E61733A5C667331365C7061720D0A5C7061720D0A7D0D0A00}
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 71.811070000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DMPrincipal.FDConsulta
    BCDToCurrency = False
    DataSetOptions = []
    Left = 416
    Top = 225
  end
end
