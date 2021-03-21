create_maven_project() {

	read -p "Enter the name of your new Maven project: " artifact_id

	mvn archetype:generate -DgroupId=io.github.dalayach -DartifactId=$artifact_id -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

}

make_sure_user_has_created_repository_on_git_hub() {


	read -p "Please go to GitHub now and make your repository! Press Y when you have done so! - " answer

	while true
	do

  		case $answer in
   			[yY]* ) break;;

			* )     read -p "You must press Y in order to continue - " answer;;
		esac

	done

	echo ""
	echo ""



}

run_git_repo_initialization_script() {

	IFS=$'\n'
	counter=0;

	declare -a final

	echo "Please enter the option that says \"...or create a new repository on the command line\"!"
	echo "Be sure to press new line a few times to make sure it works."
	read final[$counter]

	output=${final[$counter]}

	while [[ ! -z "$output" ]]
	do

	        ((counter=counter+1))
	        read final[$counter]
	        output=${final[$counter]}

	done

}

run_git_command() {

        cd "$artifact_id"

        for each in ${final[@]}
        do

                echo "$each"

        done

	cd ..
	pwd

}

create_maven_project

make_sure_user_has_created_repository_on_git_hub

run_git_repo_initialization_script

run_git_command

