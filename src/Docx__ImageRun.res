type docPropertiesOptions = {
  name: string,
  dscription: string,
  title: string,
}

type rec mediaTransformation = {
  height: float,
  width: float,
  flip?: flip,
  rotation?: float,
}
and flip = {
  horizontal?: bool,
  vertical?: bool,
}

type options<'a> = {
  /**
   * FIXME: should be equivalent to: string  | Buffer | Uint8Array | ArrayBuffer
   * 
   * @see https://docx.js.org/api/interfaces/IImageOptions.html#data
   */
  data: 'a,
  transformation: mediaTransformation,
  altText?: docPropertiesOptions,
  floating?: Docx__Floating.t,
}

@genType.import("docx") @new
external make: options<'a> => Docx__ParagraphChild.t = "ImageRun"
