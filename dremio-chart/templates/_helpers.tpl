{{/*
Expand the name of the chart.
*/}}
{{- define "dremio.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "dremio.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Calcuate the heap memory used by Dremio
*/}}
{{- define "HeapMemory" -}}
{{- $input := int . -}}
8192
{{- end -}}

{{/*
Calcuate the direct memory used by Dremio
*/}}
{{- define "DirectMemory" -}}
{{- $input := int . -}}
114688
{{- end -}}
