(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_object_storage

val aws_datasync_location_object_storage :
  ?access_key:string ->
  ?secret_key:string ->
  ?server_certificate:string ->
  ?server_port:float ->
  ?server_protocol:string ->
  ?tags:(string * string) list ->
  agent_arns:string list ->
  bucket_name:string ->
  server_hostname:string ->
  string ->
  unit
