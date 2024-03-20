(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ecr_authorization_token

val aws_ecr_authorization_token :
  ?id:string prop ->
  ?registry_id:string prop ->
  unit ->
  aws_ecr_authorization_token

val yojson_of_aws_ecr_authorization_token :
  aws_ecr_authorization_token -> json

(** RESOURCE REGISTRATION *)

type t = private {
  authorization_token : string prop;
  expires_at : string prop;
  id : string prop;
  password : string prop;
  proxy_endpoint : string prop;
  registry_id : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?registry_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?registry_id:string prop ->
  string ->
  t Tf_core.resource
