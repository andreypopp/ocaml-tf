(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appsync_api_key

val aws_appsync_api_key :
  ?description:string prop ->
  ?expires:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  unit ->
  aws_appsync_api_key

val yojson_of_aws_appsync_api_key : aws_appsync_api_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_id : string prop;
  description : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?expires:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?expires:string prop ->
  ?id:string prop ->
  api_id:string prop ->
  string ->
  t Tf_core.resource
