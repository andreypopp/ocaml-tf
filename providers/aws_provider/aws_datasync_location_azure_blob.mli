(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_azure_blob__sas_configuration
type aws_datasync_location_azure_blob

val aws_datasync_location_azure_blob :
  ?access_tier:string prop ->
  ?blob_type:string prop ->
  ?id:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  agent_arns:string prop list ->
  authentication_type:string prop ->
  container_url:string prop ->
  sas_configuration:
    aws_datasync_location_azure_blob__sas_configuration list ->
  string ->
  unit
