if [ -d ./archives/ ]
then
    echo "Deleting ./archives/ directory to remove existing archives"
    rm -rf ./archives/
    echo "Deleted ./archives/ directory to remove existing archives"
fi

echo "(re)creating ./archives/ directory"
mkdir archives
echo "(re)created ./archives/ directory"

echo "Grabbing all ears from the current (sub)folder(s) and moving them to the ./archive/ folder"
find ./ -type f -name "example*.ear" -exec cp -f {} ./archives/ \;
echo "Finished grabbing all ears from the current (sub)folder(s) and moving them to the ./archive/ folder"


