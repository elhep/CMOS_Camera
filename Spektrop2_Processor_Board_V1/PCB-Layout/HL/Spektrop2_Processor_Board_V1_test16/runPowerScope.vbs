Dim TpsFile
Dim Unit
Dim SaveImg
Dim X
Dim Y
Dim IsDCDropVoltage
Dim Layer1 : Layer1 = ""
Dim Layer2 : Layer2 = ""

If IsObject(WScript) Then
	TpsFile = WScript.Arguments(0)
	Unit = WScript.Arguments(1)
	' 0 = metric, 1 = English
	SaveImg = WScript.Arguments(2)
	X = WScript.Arguments(3)
	Y = WScript.Arguments(4)
	IsDCDropVoltage = WScript.Arguments(5)
	If WScript.Arguments.count > 6 Then
		Layer1 = WScript.Arguments(6)
	End If
	If WScript.Arguments.count > 7 Then
		Layer2 = WScript.Arguments(7)
	End If
Else
	TpsFile = ScriptHelper.Arguments.item(3)
	Unit = ScriptHelper.Arguments.item(4)
	' 0 = metric, 1 = English
	SaveImg = ScriptHelper.Arguments.item(5)
	X = ScriptHelper.Arguments.item(6)
	Y = ScriptHelper.Arguments.item(7)
	IsDCDropVoltage = ScriptHelper.Arguments.item(8)
	If ScriptHelper.Arguments.count >= 9 Then
		Layer1 = ScriptHelper.Arguments.item(9)
	End If
	If ScriptHelper.Arguments.count >= 10 Then
		Layer2 = ScriptHelper.Arguments.item(10)
	End If
	'MsgBox("Args: " + ScriptHelper.Arguments.count + "Layer1: " + Layer1 + "Layer2: " + Layer2)	
End If

Const modePlaneNoise = 0
Const modeDCDrop = 1

Const navigationInspect = 3

Const graphDCDropVoltage = 3
Const graphDCDropCurrentDensity = 5

Const imagePNG = 1

Dim Scope
Set Scope = GetObject("", "TPScope.TPApplication.52")

If Scope.Mode = modePlaneNoise Then
    Scope.Mode = modeDCDrop
End If

Scope.Units = Unit

dim fso: set fso = CreateObject("Scripting.FileSystemObject")
dim CurrentDir
If SaveImg = 1 Then
    CurrentDir = fso.GetAbsolutePathName(".")
Else
    CurrentDir = fso.GetAbsolutePathName("..")
End If

dim TpsPath : TpsPath = fso.BuildPath(CurrentDir, TpsFile)

Scope.LoadGraph TpsPath, true

Dim View
Set View = Scope.Viewer

View.TopViewMode = true
View.NavigationMode = navigationInspect

If IsDCDropVoltage = 1 Then
	View.GraphType = graphDCDropVoltage
Else
    View.GraphType = graphDCDropCurrentDensity
End If

Dim Tab : Set Tab = Scope.ActiveTab

If Layer1 <> "" Then
    Tab.ShowGraph "*", false
	If Layer2 <> "" Then
		' layer range specified
		Dim layer
		Dim inRange : inRange = False
		For i = 1 To Tab.Graphs.Count
            Set layer = Tab.Graphs.Item(i)
            If Layer1 = layer.Name Then
                inRange = True
            End If
            If inRange = True Then
                Tab.ShowGraph layer.Name, true
            End If
            If Layer2 = layer.Name Then
                inRange = False
            End If
		Next
	Else
		' single layer specified
		Tab.ShowGraph Layer1, true
	End If
End If

If SaveImg = 1 Then
    Dim ImgName : ImgName = Replace(TpsFile, ".tps", ".png")
    ImgName = fso.BuildPath(fso.GetAbsolutePathName("."), ImgName)
    View.SaveSnapshot ImgName, imagePNG, 650, 481
    Scope.Close
Else
    X = ConvDouble(X)
	Y = ConvDouble(Y)
	Margin = ConvDouble(0.03)
	
	Dim X1 : X1 = X - Margin
    Dim Y1 : Y1 = Y - Margin
    Dim X2 : X2 = X + Margin
    Dim Y2 : Y2 = Y + Margin
	
    View.FitToRect X1, Y1, X2, Y2
    View.FixBalloon X, Y
End If


Function ConvDouble(X)	
	Test = CStr(FormatNumber(20, 2))	
	If InStr(Test, ",") <> 0 Then		
		X = CDbl(Replace(X, ".", ","))		
	Else		
		X = CDbl(X)
	End If	
	ConvDouble = X
End Function
