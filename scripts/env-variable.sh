# Example for Default value and passing custom env variables
# Invoke by command => EDITION=ee ./random-commands.sh
# Invoke by command => EDITION=ce ./random-commands.sh

EDITION="${EDITION:-ce}"
echo "Variable Value: $EDITION"
if [[ ${EDITION} = 'ce' ]]; then
  echo "CE edition"
elif [[ ${EDITION} = 'ee' ]]; then
  echo "EE edition"
else 
  echo "Default edition"
fi