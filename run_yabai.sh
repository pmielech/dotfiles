#! /bin/bash
function check_service()
{
  echo "check the $1 service status"
  
  pre="com.koekeishiya."
  
  output=$(cat service_snap.txt | grep "${1}")
  
  if [[ -z "$output" ]]; then
    echo "running the $1 service..."
    $1 --start-service

  elif [[ "${output}" != "0" ]]; then
    echo "stopping the $1 service"
    $1 --stop-service

  fi
}


launchctl list > service_snap.txt


check_service "yabai"
check_service "skhd"
