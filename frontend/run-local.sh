echo "🐳 Building docker image for front..."
docker build -t graphrag:frontend -f docker/Dockerfile-frontend .

echo "🐳 Stopping any previous container..."
docker stop frontend-graphrag-demo

echo "🐳 Removing any previous container..."
docker rm frontend-graphrag-demo

echo "🐳 Running new container for front..."
echo "🐳 Front will be available at http://localhost:8080/"

docker run --env-file .env --name frontend-graphrag-demo -p 8080:8080 graphrag:frontend

