
Backup
docker run -v digiasset_vault_data:/volume --rm --log-driver none backup_image backup > vault.tar.bz2

Copy to another server
scp vault.tar.bz2 username@ip_server:/remote/directory

Restore
docker run -i -v digiasset_vault_data:/volume --rm backup_image restore < vault.tar.bz2
