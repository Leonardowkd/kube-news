# Projeto kube-news

### Objetivo
O projeto Kube-news é uma aplicação escrita em NodeJS e tem como objetivo ser uma aplicação de exemplo pra trabalhar com o uso de containers.

### Configuração
Pra configurar a aplicação, é preciso ter um banco de dados Postgre e pra definir o acesso ao banco, configure as variáveis de ambiente abaixo:

DB_DATABASE => Nome do banco de dados que vai ser usado.

DB_USERNAME => Usuário do banco de dados.

DB_PASSWORD => Senha do usuário do banco de dados.

DB_HOST => Endereço do banco de dados.

k3d cluster create - Comando para criação basica 
kubectl get pods
kubectl get nodes
kubectl describe pod meupod
kubectl port-forward pod/meupod 8080:80
kubectl get pods -l cor=verde
kubectl delete -f ./pod.yaml
kubectl apply -f ./replicaset.yaml
kubectl get replicaset
kubectl describe replicaset meureplicaset
kubectl delete pod meureplicaset-8s74g
kubectl apply -f ./deployment.yaml
kubectl get deployment 
kubectl rollout undo deployment meudeployment
kubectl get svc
k3d cluster list
k3d cluster create newcluster -p "80:30000@loadbalancer"
kubectl expose deployment/web --port 80

![image](https://user-images.githubusercontent.com/98129908/231287810-ede6155d-7aab-4caf-af40-08281644d3ae.png)

![image](https://user-images.githubusercontent.com/98129908/231289903-78ea5e30-70e5-4731-80c0-92a4f89967b1.png)
