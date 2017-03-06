cwlVersion: v1.0
class: Workflow
inputs:
  infile: File
  act: string
  gtf: File
  pairone: File
  pairtwo: File

outputs:
  cuffs:
    type: File
    outputSource: cuff/cuffout

steps:
  index:
    run: bowtiemod.cwl
    in:
      indexfile: infile
      do: act
    out: [indexout]
  tophat:
    run: tophatmod.cwl
    in:
      gtffile: gtf
      do: act
      pair1: pairone
      pair2: pairtwo
    out: [tophatout]
  cuff:
    run: cufflinksmod.cwl
    in:
      bamfile: tophat/tophatout
      gtf: gtf
    out: [cuffout]