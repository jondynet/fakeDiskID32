library fakeDiskID32;

{
  用于劫持DiskID32.dll 欺骗 DiskID32 返回结果。
  mail: h4ck@163.com
  QQ: 222411
}

uses
  SysUtils,
  Windows;

type
 TMyCharArray = array [0..31] of char;

function DiskID32(var DiskModel:TMyCharArray;var DiskID:TMyCharArray): BOOL;stdcall;
var
  factory,serial :Pchar;
begin
  factory:='I am factory';
  serial := 'I am serial';
  StrCopy(@DiskModel,factory);
  StrCopy(@DiskID,serial);
  Result := True;
end;

{$R *.res}

exports
  DiskID32;

begin

end.
 