cwlVersion: v1.0
class: CommandLineTool
baseCommand: bowtie2-build


inputs:
  - id: indexfile
    type: File
    inputBinding:
      position: 1
  - id: do
    type: string
    inputBinding:
      position: 2


outputs: 
  - id: indexout
    type: Directory
    outputBinding:
      glob: "$(runtime.outdir)"
