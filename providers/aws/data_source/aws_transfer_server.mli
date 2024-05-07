(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_transfer_server

val aws_transfer_server :
  ?id:string prop ->
  server_id:string prop ->
  unit ->
  aws_transfer_server

val yojson_of_aws_transfer_server : aws_transfer_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  domain : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  id : string prop;
  identity_provider_type : string prop;
  invocation_role : string prop;
  logging_role : string prop;
  protocols : string list prop;
  security_policy_name : string prop;
  server_id : string prop;
  structured_log_destinations : string list prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  server_id:string prop ->
  string ->
  t Tf_core.resource
