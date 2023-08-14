import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello Worldddd!';
  }
  getHealth(): string {
    return 'Health check passed!';
  }
}
