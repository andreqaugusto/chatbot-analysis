spark:
	docker compose up -d --build

stop:
	docker compose down

clean:
	rm -rf files/*