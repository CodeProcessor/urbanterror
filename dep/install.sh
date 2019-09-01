HOME=/home/urt
URT_DIR=urbanterror43
Q3_DIR=$HOME/$URT_DIR/q3ut4
mv $HOME/UrbanTerror43 $HOME/$URT_DIR/
chown -R urt:urt $HOME/$URT_DIR/
chmod a+x $HOME/$URT_DIR/Quake3-UrT-Ded.x86_64
mv $Q3_DIR/server_example.cfg $Q3_DIR/server.cfg 
mv $Q3_DIR/mapcycle_example.txt $Q3_DIR/mapcycle.txt
chown urt -R $HOME
chmod a+x $HOME/run_server.sh
