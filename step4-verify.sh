(( $(docker ps -a | grep WP_Staging_Random 2>/dev/null | wc -l) >= 1 )) && echo \"done\"