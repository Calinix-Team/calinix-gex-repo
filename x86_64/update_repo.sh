db_name="calinix-gex-repo"
rm ${db_name}.db ${db_name}.files

echo "repo-add"
repo-add -s -n -R ${db_name}.db.tar.gz *.pkg.tar.zst

sleep 1

rm ${db_name}.db
rm ${db_name}.db.sig

rm ${db_name}.files
rm ${db_name}.files.sig

mv ${db_name}.db.tar.gz ${db_name}.db
mv ${db_name}.db.tar.gz.sig ${db_name}.db.sig

mv ${db_name}.files.tar.gz ${db_name}.files
mv ${db_name}.files.tar.gz.sig ${db_name}.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"