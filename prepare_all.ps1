$ErrorActionPreference = "Stop"
$projects = @("campus_companion","book_exchange_manager","campus_event_board","travel_explorer_dashboard","expense_file_lab","museum_explorer")
foreach ($project in $projects) {
  Write-Host "Scaffolding $project..."
  Push-Location $project
  flutter create . --platforms=android,web
  flutter pub get
  Pop-Location
}
Write-Host "All six projects prepared. Run flutterfire configure separately in book_exchange_manager and campus_event_board."
