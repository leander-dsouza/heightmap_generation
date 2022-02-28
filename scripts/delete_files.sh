read $1

heightmap=$1
pkg=$(rospack find heightmap_generation)

if [ -d $pkg/models/$heightmap ]; then
    rm -r $pkg/models/$heightmap $pkg/worlds/$heightmap.world

else
	echo "Heightmap not found"
	exit
fi

echo "Done"