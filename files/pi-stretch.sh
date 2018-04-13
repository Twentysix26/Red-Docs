echo "-----"
echo "Woah woah woah, hold on there champ."
echo "This Raspbian install script only works on"
echo "the lastest version of Raspbian - 'Stretch'."
echo "-----"
echo "Even if you're on Stretch, "
echo "THERE IS NO GUARANTEE THIS WILL WORK AT ALL"
echo "-----"
echo "If you're running Raspbian Jessie, TURN BACK NOW"
echo "Waiting 10 seconds for you to read this..."
sleep 10
echo "-----"
echo "Are you sure you're using Raspbian STRETCH? (y/n)"
echo -n ">"
read YESNO
case $YESNO in
    [Yy]* ) echo "OKAY, LETS DO THIS";;
    [Nn]* ) exit;;
    * ) echo "Please answer y or n.";;
esac

sudo apt-get update
sudo apt-get install build-essential libssl-dev libffi-dev git unzip -y
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.5 get-pip.py

echo "See, that wasn't so hard?"
echo "You're done, you can now clone Red by following Step 3 of the installation here:"
echo "https://twentysix26.github.io/Red-Docs/red_install_raspbian/"