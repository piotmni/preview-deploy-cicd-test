echo "::group::deploy app"

#echo "pr id is ${{ github.event.pull_request.id }}"
#yq eval '.components[] | .[] | .start'  ../../../app-definitions/test.yaml


#components:
#  - app-component-a:
#      start: 'echo app a'
#      destroy: 'echo destroy app a'
#  - app-component-b:
#      start: 'echo app b'
#      destroy: 'echo destroy app b'

# iterate over the components and run the start command
yq eval '.components[] | .[] | .start'  ../../../app-definitions/test.yaml | while read -r cmd; do
  echo "running command: $cmd"
#  eval $cmd
done




echo "::endgroup::"
