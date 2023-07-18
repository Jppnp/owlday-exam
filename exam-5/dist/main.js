"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const core_1 = require("@nestjs/core");
const app_module_1 = require("./app.module");
async function bootstrap() {
    const app = await core_1.NestFactory.create(app_module_1.AppModule);
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
//# sourceMappingURL=main.js.map