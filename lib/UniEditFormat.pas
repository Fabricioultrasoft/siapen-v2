unit UniEditFormat;

interface

uses
  SysUtils,
  Classes,
  UniGUIApplication,
  uniEdit;

type
  // class for JQuery Number Mask plugin (variable length input)
  TNumberMask = class
  public
    inputType: string; // 'int' or 'float'
    beforePoint: integer; // chars before decimalMark
    afterPoint: integer; // chars after decimalMark
    decimalMark: string; // char for decimal separator
    pattern: string; // regular expression input mask
    defaultValueInput: string; // default value if user pastes incorrect text
    constructor Create;
    procedure Default;
    procedure Format(UniEditControl: TUniEdit);
  end;

  // class for JQuery Masked Input plugin (fixed length input)
  TMaskedInput = class
  public
    mask: string; // input mask
    definitions: TStrings; // additional mask characters definitions
    constructor Create(mask: string);
    destructor Destroy; override;
    procedure Format(UniEditControl: TUniEdit);
  end;

implementation

// =========================================================================
function Implode(const Strings: TStrings; const separator: string = ','): String;
var
  i: integer;
begin
  Result := '';
  for i := 0 to Strings.Count - 1 do
  begin
    if Strings[i] = '' then
      continue;
    if length(Result) > 0 then
      Result := Result + separator;
    Result := Result + Strings[i];
  end;
end;

// =========================================================================
function BoolToStr(const value: boolean): string;
begin
  if value then
    Result := 'true'
  else
    Result := 'false';
end;

// =========================================================================
constructor TNumberMask.Create;
begin
  Default;
end;

// =========================================================================
procedure TNumberMask.Default;
begin
  inputType := 'int';
  beforePoint := 10;
  afterPoint := 2;
  decimalMark := '.';
  pattern := '';
  defaultValueInput := '';
end;

// =========================================================================
procedure TNumberMask.Format(UniEditControl: TUniEdit);
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Add(SysUtils.Format('type: ''%s''', [inputType]));
    sl.Add(SysUtils.Format('beforePoint: %d', [beforePoint]));
    sl.Add(SysUtils.Format('afterPoint: %d', [afterPoint]));
    sl.Add(SysUtils.Format('decimalMark: ''%s''', [decimalMark]));
    if pattern <> '' then
      sl.Add(SysUtils.Format('pattern: %s', [pattern]));
    sl.Add(SysUtils.Format('defaultValueInput: ''%s''', [defaultValueInput]));
    UniSession.AddJS(SysUtils.Format('$(''#%s_id'').numberMask({%s});', [UniEditControl.JSName, Implode(sl)]));
  finally
    FreeAndNil(sl);
  end;
end;

// =========================================================================
constructor TMaskedInput.Create(mask: string);
begin
  self.mask := mask;
  definitions := TStringList.Create;
end;

// =========================================================================
destructor TMaskedInput.Destroy;
begin
  definitions.Free;
  inherited;
end;

// =========================================================================
procedure TMaskedInput.Format(UniEditControl: TUniEdit);
var
  i: integer;
  js: string;
begin
  js := '';
  for i := 0 to definitions.Count - 1 do
    js := js + SysUtils.Format('$.mask.definitions[''%s'']=''[%s]'';', [definitions.Names[i], definitions.ValueFromIndex[i]]);
  js := js + SysUtils.Format('$("#%s_id-inputEl").mask("%s");', [UniEditControl.JSName, mask]);
 // js := js + SysUtils.Format('jQuery(function(){jQuery("#%s_id-inputEl").mask("%s");});', [UniEditControl.JSName, mask]);
  UniSession.AddJS(js);
 // UniSession.AddJS(Format('jQuery(function(){jQuery("#%s_id-inputEl").mask("%s");});', [Ed.JSName, MaskStr]));
end;

end.
