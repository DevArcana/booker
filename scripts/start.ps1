docker image build -t booker_db:dev ../database
docker run -d --name booker_db --rm booker_db:dev postgres