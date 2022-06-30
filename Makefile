# ---------------------------------------------------------------------------- #
# setup 
# ---------------------------------------------------------------------------- #

setup:
	pyenv install --skip-existing 3.10.4 &&\
		pyenv uninstall -f airbnb &&\
		pyenv virtualenv --force 3.10.4 airbnb &&\
		pyenv local airbnb &&\
		export CXX=g++-11
		export CC=gcc-11
		pip install --upgrade pip &&\
		pip install -r requirements.txt

install:
	export CXX=g++-11 &&\
		export CC=gcc-11 &&\
		pip install --upgrade pip &&\
		pip install -r requirements.txt

# ---------------------------------------------------------------------------- #
# setup
# ---------------------------------------------------------------------------- #

psql-docker: ##pg-start ## Provides an interactive postgres shell
	docker exec -it airbnb_pg-airbnb_1 psql -U ${DATASTORE_USER} -d ${DATASTORE_DB}

psql-local:
	 PGPASSWORD=${DATASTORE_PWD} psql -h ${DATASTORE_HOST} -U ${DATASTORE_USER} -d ${DATASTORE_DB} -p ${DATASTORE_PORT}