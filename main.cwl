class: Workflow
cwlVersion: v1.0
dct:creator: {'@id': 'http://orcid.org/0000-0002-7681-6415', 'foaf:mbox': zhanghj@synapse.org,
  'foaf:name': zhanghj}
doc: 'SMC-RNA challenge isoform quantification submission

  '
hints: []
id: main
inputs:
- {id: TUMOR_FASTQ_1, type: File}
- {id: TUMOR_FASTQ_2, type: File}
name: main
outputs:
- {id: OUTPUT, outputSource: seekmer/output, type: File}
steps:
- id: seekmer
  in:
  - {id: fastq1, source: TUMOR_FASTQ_1}
  - {id: fastq2, source: TUMOR_FASTQ_2}
  out: [output]
  run: seekmer.cwl
