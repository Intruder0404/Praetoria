
declare module '@vue/runtime-core' {
  interface ComponentCustomProperties {
    $toast: (msg: string) => void,
    $root: any,
    $i18n:any
  }
}

export {};
