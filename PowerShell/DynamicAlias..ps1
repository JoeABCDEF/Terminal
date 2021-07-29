# 进入项目
function cd-Project() {
    $Route = "$Path\$Name";
    $Code = {
        Set-Location $Route;
    }

    $null = New-Item -Path function: -Name "script:$Name" -Value $Code.GetNewClosure()
}

# 进入并且运行项目
function cd-RunProject() {
    $Code = {
        Set-Location "$Path\$Name";
        cls
        npm run dev
    }

    $null = New-Item -Path function: -Name "script:$Alias" -Value $Code
}

function setAlias (){
    Set-Alias -Name $Alias -Value $Command -Description $Des
}

function setAllAlias ($RootDir){
    foreach ($file in dir $RootDir){ 
        $Path = $RootDir;
        $Name = $file.name -replace '^vtcloud';
        $Des = "cd $Path/$file.name";        
        $Command = $Name;
        $Alias = $Name;

        cd-Project;
        setAlias;

        $Alias = "_$Name";
        $Command = $Alias;

        cd-RunProject;
        setAlias;
    }
};
