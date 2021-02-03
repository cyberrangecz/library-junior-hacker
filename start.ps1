# Start the sandbox with student ID.
# If running PowerShell scripts is disabled, allow it: https://superuser.com/a/106362

if ( $Args.Count -ne 1 )
{
    Write-Host "Usage: .\start.ps1 student_ID"
}
else
{
    $Env:ANSIBLE_ARGS='--extra-vars "student_id=$($args[0])"' ; vagrant up
}

