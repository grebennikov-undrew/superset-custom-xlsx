superset-custom-xlsx

How to start:
1. Place the contents of the archive in any folder

2. Run install.sh to load files. Type path to target Superset folder (will be created, if not exists)
	bash install.sh /some/superset/folder/

3. Go to Superset folder
	cd /some/superset/folder/superset/

4. Start Superset
	docker-compose -f docker-compose-prod.yml up