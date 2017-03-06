cwlVersion: v1.0
class: CommandLineTool
baseCommand: tophat2

inputs:
  - id: gtffile
    type: File
    inputBinding:
      position: 1
      prefix: --GTF
  - id: do
    type: string
    inputBinding:
      position: 2
  - id: pair1
    type: File
    inputBinding:
      position: 3
  - id: pair2
    type: File
    inputBinding:
      position: 4


outputs: 
  - id: tophatout
    type: File
    outputBinding:
      glob: "./tophat_out/accepted_hits.bam"

