open Docx
open Util

let table = Table.make({
  rows: [
    TableRow.make({
      children: [
        TableCell.make({
          children: [
            Paragraph.makeWith({
              children: [
                ImageRun.make({
                  data: NodeJs.Fs.readFileSync("./images/1.jpg"),
                  transformation: {
                    width: 100.0,
                    height: 100.0,
                  },
                }),
              ],
            })->Types.ParagraphOrTable.fromParagraph,
          ],
          verticalAlign: #center,
        }),
        TableCell.make({
          children: [
            Paragraph.makeWith({
              text: "Hello",
              heading: #Heading1,
            })->Types.ParagraphOrTable.fromParagraph,
          ],
          verticalAlign: #center,
        }),
      ],
    }),
  ],
})
