up:
	git clone https://github.com/todo-deploy/todo-app.git
	mv todo-app/* .
	rm -rf todo-app/
	docker build . -t todo-app
	kubectl apply -f deployment-app.yaml,deployment-db.yaml

down:
	kubectl delete -f deployment-app.yaml,deployment-db.yaml

status:
	kubectl get pods