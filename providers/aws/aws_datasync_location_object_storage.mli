(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_object_storage

type t = private {
  access_key : string prop;
  agent_arns : string list prop;
  arn : string prop;
  bucket_name : string prop;
  id : string prop;
  secret_key : string prop;
  server_certificate : string prop;
  server_hostname : string prop;
  server_port : float prop;
  server_protocol : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

val aws_datasync_location_object_storage :
  ?access_key:string prop ->
  ?id:string prop ->
  ?secret_key:string prop ->
  ?server_certificate:string prop ->
  ?server_port:float prop ->
  ?server_protocol:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  agent_arns:string prop list ->
  bucket_name:string prop ->
  server_hostname:string prop ->
  string ->
  t
