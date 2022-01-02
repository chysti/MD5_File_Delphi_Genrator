unit MD5_generator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,IdHashMessageDigest, idHash;

type
  TMD5_FILE_GENRATOR = class(TForm)
    GroupBox1: TGroupBox;
    FileName_edt: TEdit;
    Browse_btn: TButton;
    GroupBox2: TGroupBox;
    MemLog: TMemo;
    OpenDialog1: TOpenDialog;
    procedure Browse_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function MD5(const fileName : string) : string;
  end;

var
  MD5_FILE_GENRATOR: TMD5_FILE_GENRATOR;

implementation

{$R *.dfm}

procedure TMD5_FILE_GENRATOR.Browse_btnClick(Sender: TObject);
var
  fName:string;
begin
    if OpenDialog1.Execute then
    begin
      fName:= OpenDialog1.FileName;
      FileName_edt.Text:=fName;
      if FileExists(fName) then
         MemLog.Lines.Add('Generated MD5 : '+MD5(fName))
      else
        MemLog.Lines.Add('FileNotFound');
    end;

end;

function TMD5_FILE_GENRATOR.MD5(const fileName: string): string;
 var
   idmd5 : TIdHashMessageDigest5;
   fs : TFileStream;
   hash : T4x4LongWordRecord;
 begin
   idmd5 := TIdHashMessageDigest5.Create;
   fs := TFileStream.Create(fileName, fmOpenRead OR fmShareDenyWrite) ;
   try
     result:= idmd5.HashStreamAsHex(fs);
   finally
     fs.Free;
     idmd5.Free;
   end;
 end;

end.
