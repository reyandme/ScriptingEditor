object SEMainForm: TSEMainForm
  Left = 0
  Top = 0
  Caption = 'Scripting Editor'
  ClientHeight = 642
  ClientWidth = 1484
  Color = clBtnFace
  Constraints.MinHeight = 700
  Constraints.MinWidth = 1450
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 1231
    Top = 24
    Height = 599
    Align = alRight
    ExplicitLeft = 895
    ExplicitTop = 35
    ExplicitHeight = 587
  end
  object Splitter2: TSplitter
    Left = 250
    Top = 24
    Height = 599
    ExplicitLeft = 244
    ExplicitTop = 35
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 623
    Width = 1484
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 64
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Width = 64
      end
      item
        Width = 250
      end
      item
        Bevel = pbNone
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1484
    Height = 24
    AutoSize = True
    ButtonWidth = 24
    DoubleBuffered = True
    EdgeBorders = [ebLeft, ebTop]
    Images = SECommandsDataModule.ilActions16x16
    List = True
    ParentDoubleBuffered = False
    ParentShowHint = False
    AllowTextButtons = True
    ShowHint = True
    TabOrder = 1
    Wrapable = False
    object tbNewFile: TToolButton
      Left = 0
      Top = 0
      Action = SECommandsDataModule.ActNewFile
    end
    object tbOpen: TToolButton
      Left = 24
      Top = 0
      Action = SECommandsDataModule.ActOpenFile
    end
    object tbSaveFile: TToolButton
      Left = 48
      Top = 0
      Action = SECommandsDataModule.ActSaveFile
    end
    object tbSaveFileAs: TToolButton
      Left = 72
      Top = 0
      Action = SECommandsDataModule.ActSaveFileAs
    end
    object tbSep1: TToolButton
      Left = 96
      Top = 0
      Width = 5
      Caption = 'tbSep1'
      ImageIndex = 5
      Style = tbsSeparator
    end
    object tbCut: TToolButton
      Left = 101
      Top = 0
      Action = SECommandsDataModule.ActCut
    end
    object tbCopy: TToolButton
      Left = 125
      Top = 0
      Action = SECommandsDataModule.ActCopy
    end
    object tbPaste: TToolButton
      Left = 149
      Top = 0
      Action = SECommandsDataModule.ActPaste
    end
    object tbDelete: TToolButton
      Left = 173
      Top = 0
      Action = SECommandsDataModule.ActDelete
    end
    object tbSep2: TToolButton
      Left = 197
      Top = 0
      Width = 5
      Caption = 'tbSep2'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbUndo: TToolButton
      Left = 202
      Top = 0
      Action = SECommandsDataModule.ActUndo
    end
    object tbRedo: TToolButton
      Left = 226
      Top = 0
      Action = SECommandsDataModule.ActRedo
    end
    object tbSep3: TToolButton
      Left = 250
      Top = 0
      Width = 5
      Caption = 'tbSep3'
      ImageIndex = 0
      Style = tbsSeparator
    end
    object tbFind: TToolButton
      Left = 255
      Top = 0
      Action = SECommandsDataModule.ActFind
    end
    object tbReplace: TToolButton
      Left = 279
      Top = 0
      Action = SECommandsDataModule.ActReplace
    end
    object tbGoToLine: TToolButton
      Left = 303
      Top = 0
      Action = SECommandsDataModule.ActGoToLine
    end
    object tbSep4: TToolButton
      Left = 327
      Top = 0
      Width = 5
      Caption = 'tbSep4'
      Down = True
      ImageIndex = 9
      Style = tbsSeparator
    end
    object tbValidate: TToolButton
      Left = 332
      Top = 0
      Action = SECommandsDataModule.ActValidate
    end
  end
  object pcLeft: TPageControl
    Left = 0
    Top = 24
    Width = 250
    Height = 599
    ActivePage = tsEvents
    Align = alLeft
    TabOrder = 2
    TabPosition = tpBottom
    object tsEvents: TTabSheet
      Caption = 'Events'
    end
    object tsStates: TTabSheet
      Caption = 'States'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsActions: TTabSheet
      Caption = 'Actions'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tsUtils: TTabSheet
      Caption = 'Utils'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object pcRight: TPageControl
    Left = 1234
    Top = 24
    Width = 250
    Height = 599
    ActivePage = tsIssues
    Align = alRight
    MultiLine = True
    TabOrder = 3
    TabPosition = tpBottom
    object tsIssues: TTabSheet
      Caption = 'Issues'
    end
    object tsRawSVOutput: TTabSheet
      Caption = 'Raw Validator Output'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object edtRawSVOutput: TMemo
        Left = 0
        Top = 0
        Width = 242
        Height = 570
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
  object pcEditors: TPageControl
    Left = 253
    Top = 24
    Width = 978
    Height = 599
    Align = alClient
    HotTrack = True
    TabOrder = 4
    OnChange = pcEditorsChange
    OnMouseUp = pcEditorsMouseUp
  end
  object MainMenu1: TMainMenu
    Images = SECommandsDataModule.ilActions22x22
    Left = 32
    Top = 40
    object File1: TMenuItem
      Caption = 'File'
      object MenuNew: TMenuItem
        Action = SECommandsDataModule.ActNewFile
      end
      object MenuOpen: TMenuItem
        Action = SECommandsDataModule.ActOpenFile
      end
      object MenuReopen: TMenuItem
        Caption = 'Reopen'
        OnClick = MenuReopenClick
        object mri1: TMenuItem
          Caption = 'mri1'
          OnClick = MriClick
        end
        object mri2: TMenuItem
          Caption = 'mri2'
          OnClick = MriClick
        end
        object mri3: TMenuItem
          Caption = 'mri3'
          OnClick = MriClick
        end
        object mri4: TMenuItem
          Caption = 'mri4'
          OnClick = MriClick
        end
        object mri5: TMenuItem
          Caption = 'mri5'
          OnClick = MriClick
        end
        object mri6: TMenuItem
          Caption = 'mri6'
          OnClick = MriClick
        end
        object mri7: TMenuItem
          Caption = 'mri7'
          OnClick = MriClick
        end
        object mri8: TMenuItem
          Caption = 'mri8'
          OnClick = MriClick
        end
        object mri9: TMenuItem
          Caption = 'mri9'
          OnClick = MriClick
        end
        object mri10: TMenuItem
          Caption = 'mri10'
          OnClick = MriClick
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MenuSave: TMenuItem
        Action = SECommandsDataModule.ActSaveFile
      end
      object MenuSaveAs: TMenuItem
        Action = SECommandsDataModule.ActSaveFileAs
      end
      object MenuClose: TMenuItem
        Action = SECommandsDataModule.ActCloseFile
      end
      object MenuCloseAll: TMenuItem
        Action = SECommandsDataModule.ActCloseAllFiles
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuOptions: TMenuItem
        Action = SECommandsDataModule.ActOptions
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object MenuExit: TMenuItem
        Action = SECommandsDataModule.ActExit
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object MenuUndo: TMenuItem
        Action = SECommandsDataModule.ActUndo
      end
      object MenuRedo: TMenuItem
        Action = SECommandsDataModule.ActRedo
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MenuCut: TMenuItem
        Action = SECommandsDataModule.ActCut
      end
      object MenuCopy: TMenuItem
        Action = SECommandsDataModule.ActCopy
      end
      object MenuPaste: TMenuItem
        Action = SECommandsDataModule.ActPaste
      end
      object MenuDelete: TMenuItem
        Action = SECommandsDataModule.ActDelete
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object MenuSelectAll: TMenuItem
        Action = SECommandsDataModule.ActSelectAll
      end
    end
    object Search1: TMenuItem
      Caption = 'Search'
      object MenuFind: TMenuItem
        Action = SECommandsDataModule.ActFind
      end
      object MenuFindForward: TMenuItem
        Action = SECommandsDataModule.ActFindNext
      end
      object MenuFindBackward: TMenuItem
        Action = SECommandsDataModule.ActFindPrevious
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object MenuReplace: TMenuItem
        Action = SECommandsDataModule.ActReplace
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object MenuGoToLine: TMenuItem
        Action = SECommandsDataModule.ActGoToLine
      end
    end
    object Run1: TMenuItem
      Caption = 'Run'
      object MenuValidate: TMenuItem
        Action = SECommandsDataModule.ActValidate
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object MenuKMRDocWiki: TMenuItem
        Action = SECommandsDataModule.ActKMRDocWiki
      end
      object MenuKPDocWiki: TMenuItem
        Action = SECommandsDataModule.ActKPDocWiki
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object MenuAboutSE: TMenuItem
        Action = SECommandsDataModule.ActAboutSE
      end
      object MenuShowWelcomeTab: TMenuItem
        Action = SECommandsDataModule.ActShowWelcome
      end
    end
    object Theme1: TMenuItem
      Caption = 'Theme'
      object MenuThemeLight: TMenuItem
        Action = SECommandsDataModule.ActThemeLight
      end
      object MenuThemeClassic: TMenuItem
        Action = SECommandsDataModule.ActThemeClassic
      end
      object MenuThemeOcean: TMenuItem
        Action = SECommandsDataModule.ActThemeOcean
      end
      object MenuthemeVisualStudio: TMenuItem
        Action = SECommandsDataModule.ActThemeVisualStudio
      end
      object MenuthemeTwilight: TMenuItem
        Action = SECommandsDataModule.ActThemeTwilight
      end
      object MenuthemeDark: TMenuItem
        Action = SECommandsDataModule.ActThemeDark
      end
    end
  end
  object pmIssues: TPopupMenu
    AutoPopup = False
    MenuAnimation = [maTopToBottom]
    Left = 104
    Top = 40
    object miIssueGoTo: TMenuItem
      Action = SECommandsDataModule.actIssueGoTo
    end
    object miIssueCopy: TMenuItem
      Action = SECommandsDataModule.actIssueCopy
    end
  end
  object ilMethodTypes: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 14
    Width = 14
    Left = 168
    Top = 40
    Bitmap = {
      494C01010400300004000E000E00FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000001C00000001002000000000008018
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000017021500680C4F
      00CA137600F7147E00FF147E00FF147E00FF147E00FF137600F70C4F00CA0215
      006800000017000000010000000100000017021500680C4F00CA137600F71179
      00FF084C00FF0C6700FF137D00FF137600F70C4F00CA02150068000000170000
      00010000000101000017160D0068583300CA874D00F78F5200FF8F5200FF8F52
      00FF8F5200FF874D00F7583300CA160D00680100001700000001000000010100
      0017160D0068583300CA874D00F78F5200FF8F5200FF8F5200FF8F5200FF874D
      00F7583300CA160D0068010000170000000100000017072D0098227A00FA387E
      00FF437E00FF457E00FF457E00FF457E00FF457E00FF437E00FF387E00FF227A
      00FA072D00980000001700000017072D0098227A00FA387E00FF3F7700FF2646
      00FF030600FF0C1600FF356100FF427C00FF387E00FF227A00FA072D00980000
      001701000017311D0098AA6200FAE38400FFFB9100FFFF9400FFFF9400FFFF94
      00FFFF9400FFFB9100FFE38400FFAA6200FA311D00980100001701000017311D
      0098AA6200FAE38400FFFB9100FFFF9400FFFF9400FFFF9400FFFF9400FFFB91
      00FFE38400FFAA6200FA311D00980100001702150068227A00FA407E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF407E
      00FF227A00FA0215006802150068227A00FA407E00FF457E00FF396900FF0F1B
      00FF000000FF000000FF0E1B00FF335D00FF447B00FF407E00FF227A00FA0215
      0068160D0068AA6200FAF48E00FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFF48E00FFAA6200FA160D0068160D0068AA62
      00FAF48E00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFF38D00FFBD6D
      00FF9F5B00FF955500FF935400FA160D00680C5000CB387E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF387E00FF0C5000CB0C5000CB387E00FF457E00FF457E00FF437A00FF2B4E
      00FF080F00FF000000FF000100FF101D00FF325C00FF447B00FF387E00FF0C50
      00CB583300CBE28400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFE28400FF583300CB583300CBE284
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFDF8100FF4F2D
      00FF000000FF000000FFA25D00FF583300CB137600F7437E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF437E00FF137600F7137600F7437E00FF457E00FF457E00FF457E00FF437A
      00FF2D5200FF040900FF000000FF000200FF101D00FF335D00FF427C00FF1376
      00F7874D00F7FB9100FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFA9100FF874D00F7874D00F7FB91
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFDF8100FF4F2D
      00FF000000FF000000FFBB6B00FF874D00F7147E00FF457E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF457E00FF147E00FF0D7200FF111F00FF111F00FF111F00FF111F00FF111F
      00FF0F1C00FF010300FF000000FF000000FF000100FF0E1B00FF356100FF137D
      00FF8F5200FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FF8F5200FF764400FF3F24
      00FF3F2400FF3F2400FF3F2400FF3F2400FF3F2400FF3F2400FF371F00FF130B
      00FF000000FF000000FFBF6E00FF8F5200FF147E00FF457E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF457E00FF147E00FF0B6E00FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF0C1700FF0D70
      00FF8F5200FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FF8F5200FF6E4000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FFBF6E00FF8F5200FF147E00FF457E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF457E00FF147E00FF0C6F00FF030700FF030700FF030700FF030700FF0307
      00FF030700FF020400FF000000FF000000FF000000FF000000FF0C1600FF0D6F
      00FF8F5200FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FF8F5200FF704100FF0F08
      00FF0F0800FF0F0800FF0F0800FF0F0800FF0F0800FF0F0800FF0D0700FF0402
      00FF000000FF000000FFBF6E00FF8F5200FF147E00FF457E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF457E00FF147E00FF117800FF2B4F00FF2B4F00FF2B4F00FF2B4F00FF2B4F
      00FF294C00FF132400FF000000FF000000FF000100FF0E1B00FF356100FF137D
      00FF8F5200FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FF8F5200FF834B00FFA05C
      00FFA05C00FFA05B00FFA05B00FFA05C00FFA05B00FFA05C00FF8C5000FF311C
      00FF000000FF000000FFBF6E00FF8F5200FF137600F6437E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF437E00FF137600F6137600F6437E00FF457E00FF457E00FF457E00FF437A
      00FF2D5200FF040900FF000000FF000200FF101D00FF335D00FF427C00FF1376
      00F6854C00F6FA9100FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFA9100FF854C00F6854C00F6FA91
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFDF8100FF4F2D
      00FF000000FF000000FFBA6B00FF854C00F60C4E00C9387E00FF457E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E
      00FF387E00FF0C4E00C90C4E00C9387E00FF457E00FF457E00FF447D00FF2C50
      00FF080F00FF000000FF000100FF101D00FF325C00FF447B00FF387E00FF0C4E
      00C9573300C9E18300FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFFF9400FFE18300FF573300C9573300C9E183
      00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFDF8100FF4F2D
      00FF000000FF000000FFA25D00FF573300C902140066227A00FA407E00FF457E
      00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF457E00FF407E
      00FF227A00FA0214006602140066227A00FA407E00FF457E00FF457D00FF294A
      00FF040700FF000000FF0E1B00FF335D00FF447B00FF407E00FF227A00FA0214
      0066150C0066A96200FAF48E00FFFF9400FFFF9400FFFF9400FFFF9400FFFF94
      00FFFF9400FFFF9400FFFF9400FFF48E00FFA96200FA150C0066150C0066A962
      00FAF48E00FFFF9400FFFF9400FFFF9400FFFF9400FFFF9400FFF38D00FFBD6D
      00FF9F5C00FF945500FF925300FA150C006600000016072B0096227A00FA387E
      00FF437E00FF457E00FF457E00FF457E00FF457E00FF437E00FF387E00FF227A
      00FA072B00960000001600000016072B0096227A00FA387E00FF437E00FF4076
      00FF254400FF0C1700FF356100FF427C00FF387E00FF227A00FA072B00960000
      001600000016301C0096A96200FAE18300FFFA9100FFFF9400FFFF9400FFFF94
      00FFFF9400FFFA9100FFE18300FFA96200FA301C00960000001600000016301C
      0096A96200FAE18300FFFA9100FFFF9400FFFF9400FFFF9400FFFF9400FFFA91
      00FFE18300FFA96200FA301C0096000000160000000100000016021400660C4E
      00C9137600F6147E00FF147E00FF147E00FF147E00FF137600F60C4E00C90214
      006600000016000000010000000100000016021400660C4E00C9137600F6147E
      00FF117900FF0D7000FF137D00FF137600F60C4E00C902140066000000160000
      00010000000100000016150C0066573300C9854C00F68F5200FF8F5200FF8F52
      00FF8F5200FF854C00F6573300C9150C00660000001600000001000000010000
      0016150C0066573300C9854C00F68F5200FF8F5200FF8F5200FF8F5200FF854C
      00F6573300C9150C00660000001600000001424D3E000000000000003E000000
      28000000380000001C0000000100010000000000E00000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
