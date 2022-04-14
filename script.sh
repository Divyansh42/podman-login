helm install $RELEASE_NAME openshift-actions-runner/actions-runner --set serviceAccountName=buildah-sa --set runnerImage=quay.io/redhat-github-actions/buildah-runner --set runnerTag=latest --set-string ephemeral=true --set-string githubPat=$GITHUB_PAT --set-string githubOwner=$GITHUB_OWNER --set-string githubRepository=$GITHUB_REPO \
&& echo "---------------------------------------" \
&& helm get manifest $RELEASE_NAME | kubectl get -f -
