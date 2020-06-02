{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "lemonldapNG.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the portail app.
*/}}
{{- define "lemonldapNG.portail.name" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-portail" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Expand the name of the manager app.
*/}}
{{- define "lemonldapNG.manager.name" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-manager" $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "lemonldapNG.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create a default fully qualified app name for portail.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "lemonldapNG.portail.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-portail" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Create a default fully qualified app name for manager.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "lemonldapNG.manager.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s-manager" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified postgresql name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "lemonldapNG.conf_backend.fullname" -}}
{{- printf "%s-%s" .Release.Name "conf_backend" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default postgresql hostname
*/}}
{{- define "lemonldapNG.conf_backend.hostname" -}}
{{- if .Values.conf_backend.enabled -}}
{{- printf "%s-%s" .Release.Name "conf_backend" | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Values.db.hostname | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default postgresql port
*/}}
{{- define "lemonldapNG.conf_backend.port" -}}
{{- if .Values.conf_backend.enabled -}}
{{- printf "%s" .Values.conf_backend.service.port | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s" .Values.db.port | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{/*
Create a default fully qualified redis name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "lemonldapNG.session_backend.fullname" -}}
{{- printf "%s-%s" .Release.Name "session_backend" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "lemonldapNG.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
