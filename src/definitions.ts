export interface MotionPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}