cwlVersion: v1.0
class: CommandLineTool
baseCommand: cufflinks

arguments: ["--no-update-check","-q"]

inputs:
  - id: gtf
    type: File
    inputBinding:
      position: 1
      prefix: -G
  - id: bamfile
    type: File
    inputBinding:
      position: 2


outputs: 
  - id: cuffout
    type: File
    outputBinding:
      glob: "transcripts.gtf"
