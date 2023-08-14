import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello Worl2!';
  }
  getHealth(): string {
    return 'Health check passed!';
  }
}
