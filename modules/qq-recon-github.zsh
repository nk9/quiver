#!/usr/bin/env zsh

############################################################# 
# qq-recon-github
#############################################################

qq-recon-github-by-user-curl() {
    local u && read "u?USER: "
    print -z "curl -s \"https://api.github.com/users/${u}/repos?per_page=1000\" | jq '.[].git_url'"
}

qq-recon-github-by-domain-gwen-001() {
    [[ -z "${GH_TOKEN}" ]] && echo "GH_TOKEN env variable not set" && return;
    local d && read "d?DOMAIN: "
    print -z "python3 /opt/recon/github-search/github-endpoints.py -t ${GH_TOKEN} -d ${d}"
}

