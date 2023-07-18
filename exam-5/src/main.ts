import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app
    .listen(8765)
    .then(() => {
      console.log(`successfully started on port 8765`);
    })
    .catch((error) => {
      console.log(`error while start: ${error}`);
    });
}
bootstrap();
