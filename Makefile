run:
	docker run --rm --name go-nb -itd -p 8889:8888 -v /Users/yangchengjun/projects:/projects gopherdata/gophernotes
	docker run --rm --name nb -itd -p 8888:8888 -v /Users/yangchengjun/projects:/home/jovyan/work cj/jupyter-notebook

token:
	docker exec go-nb jupyter notebook list
	docker exec nb jupyter server list

rm:
	docker stop go-nb
	docker stop nb
