echo "Remove apps..."

$apps = @(
    "king.com.CandyCrushSodaSaga"
    "Microsoft.MinecraftUWP"
    "A278AB0D.MarchofEmpires"
    "SkypeApp"
)

foreach ($app in $apps) {
    $appInfo = Get-AppxPackage -AllUsers -name "$app"
    if (!$appInfo) {
        echo "App not exists"
        continue;
    }

    echo "Remove $app"

    echo $appInfo | Remove-AppxPackage

    Get-AppXProvisionedPackage -Online |
        where DisplayName -EQ $app |
        Remove-AppxProvisionedPackage -Online
}

echo "Done!"
