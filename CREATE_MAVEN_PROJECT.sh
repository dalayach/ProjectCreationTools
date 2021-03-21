read -p "Enter the name of your new Maven project: " artifactId

#mvn archetype:generate -DgroupId=io.github.dalayach -DartifactId=$artifactId -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

# (1) prompt user, and read command line argument
read -p "Please go to GitHub now and make your repository! Press Y when you have done so! - " answer

while true
do

  # (2) handle the input we were given
  case $answer in
   [yY]* ) break;;

   * )     read -p "You must press Y in order to continue - " answer;;
  esac
done

echo ""
echo ""

arrDomains=()
echo "Enter the domain names :"

while read domain
do
    arrDomains+=($domain)
    # do processing with each domain
done

echo "Domain List : ${arrDomains[@]}"

echo ""
echo ""
echo "Please enter the option that says \"...or create a new repository on the command line\"!"
echo "Be sure to press new line a few times to make sure it works."
echo ""


