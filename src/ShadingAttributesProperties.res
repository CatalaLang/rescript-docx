/** @see https://docx.js.org/api/interfaces/IShadingAttributesProperties.html */
type t = {
  color?: string,
  fill?: string,
  @as("type") _type?: ShadingType.t,
}
