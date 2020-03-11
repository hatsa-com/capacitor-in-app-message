declare module "@capacitor/core" {
  interface PluginRegistry {
    InAppMessage: InAppMessagePlugin;
  }
}

export interface InAppMessagePlugin {
  echo(options: { value: string }): Promise<{value: string}>;
}
