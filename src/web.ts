import { WebPlugin } from '@capacitor/core';
import { InAppMessagePlugin } from './definitions';

export class InAppMessageWeb extends WebPlugin implements InAppMessagePlugin {
  constructor() {
    super({
      name: 'InAppMessage',
      platforms: ['web']
    });
  }

  async echo(options: { value: string }): Promise<{value: string}> {
    console.log('ECHO', options);
    return options;
  }
}

const InAppMessage = new InAppMessageWeb();

export { InAppMessage };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(InAppMessage);
