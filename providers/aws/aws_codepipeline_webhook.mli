(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authentication_configuration

val authentication_configuration :
  ?allowed_ip_range:string prop ->
  ?secret_token:string prop ->
  unit ->
  authentication_configuration

type filter

val filter :
  json_path:string prop -> match_equals:string prop -> unit -> filter

type aws_codepipeline_webhook

val aws_codepipeline_webhook :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  authentication:string prop ->
  name:string prop ->
  target_action:string prop ->
  target_pipeline:string prop ->
  filter:filter list ->
  unit ->
  aws_codepipeline_webhook

val yojson_of_aws_codepipeline_webhook :
  aws_codepipeline_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  authentication : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_action : string prop;
  target_pipeline : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  authentication:string prop ->
  name:string prop ->
  target_action:string prop ->
  target_pipeline:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?authentication_configuration:authentication_configuration list ->
  authentication:string prop ->
  name:string prop ->
  target_action:string prop ->
  target_pipeline:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
