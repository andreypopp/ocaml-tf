(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_azure_blob__sas_configuration
type aws_datasync_location_azure_blob

val aws_datasync_location_azure_blob :
  ?access_tier:string ->
  ?blob_type:string ->
  ?tags:(string * string) list ->
  agent_arns:string list ->
  authentication_type:string ->
  container_url:string ->
  sas_configuration:
    aws_datasync_location_azure_blob__sas_configuration list ->
  string ->
  unit
