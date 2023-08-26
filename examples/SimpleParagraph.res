open FileChild
open Js.Promise2

Document.make({
  sections: [
    {
      children: [p("Hello World")],
    },
  ],
})
->Packer.toBase64String
->then((doc: string) => {
  let buffer = NodeJs.Buffer.fromStringWithEncoding(doc, NodeJs.StringEncoding.base64)
  NodeJs.Fs.writeFileSync("simple-paragraph.docx", buffer)->resolve
})
->ignore
