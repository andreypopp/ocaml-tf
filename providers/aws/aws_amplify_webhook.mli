(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_amplify_webhook

val aws_amplify_webhook :
  ?description:string prop ->
  ?id:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  unit ->
  aws_amplify_webhook

val yojson_of_aws_amplify_webhook : aws_amplify_webhook -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_id : string prop;
  arn : string prop;
  branch_name : string prop;
  description : string prop;
  id : string prop;
  url : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  app_id:string prop ->
  branch_name:string prop ->
  string ->
  t Tf_core.resource
