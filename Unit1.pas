unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    procedure addInfoArray;
  public
    { Public declarations }
  end;

  TMinhaThread = class(TThread)
  protected 
    procedure Execute; override;
  public
    constructor Create;
    destructor Destroy; override;
end;

var
  Form1: TForm1;
  info: array[0..9] of string;

implementation

{$R *.dfm}

const
  Names: array[0..9] of string = (
    'NOME: ', 'SOBRENOME: ', 'CPF: ', 'DATA NASC: ', 'RG: ', 'NOME DA MÃE: ',
    'FORMAÇÃO: ', 'STATUS CIVÍL: ', 'PESO: ', 'ALTURA: ');

constructor TMinhaThread.Create;
begin
   inherited Create(True);
end;

procedure TMinhaThread.Execute;
var
  i: Integer;
  arq: TextFile;
begin
  inherited;
  Form1.addInfoArray;
  if Form1.SaveDialog1.Execute then
  begin
    AssignFile(arq, Form1.SaveDialog1.FileName);
    Rewrite(arq);
    for i := Low(Names) to High(Names) do
    begin
      Form1.Memo1.Lines.Add(Names[i] + info[i]);
      Writeln(arq, Names[i] + info[i]);
    end;
    CloseFile(arq);
    Sleep(1000);
    ShowMessage('Arquivo de log gerado!');
    Terminate;
    WaitFor;
    Free;
  end
end;

destructor TMinhaThread.Destroy;
begin
  inherited;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Thread: TMinhaThread;
begin
  Thread := TMinhaThread.Create;
  Thread.FreeOnTerminate := True;
  Thread.Resume;
end;

procedure TForm1.addInfoArray;
begin
  info[0] := Edit1.Text;
  info[1] := Edit10.Text;
  info[2] := Edit2.Text;
  info[3] := Edit3.Text;
  info[4] := Edit4.Text;
  info[5] := Edit5.Text;
  info[6] := Edit6.Text;
  info[7] := Edit7.Text;
  info[8] := Edit8.Text;
  info[9] := Edit9.Text;
end;

end.
