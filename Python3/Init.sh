
echo 'Rerading Packages'

pkgs=(  
         'r-base'
         'python3-pip'
	 'python3-dev'
	 'python-virtualenv'
         )

echo "packages for Big Data Analytics"
for i in "${pkgs[@]}"
do
    sudo apt install $i
    echo 'done installing: ' $i
done
