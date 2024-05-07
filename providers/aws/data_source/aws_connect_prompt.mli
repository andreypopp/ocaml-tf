(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_connect_prompt

val aws_connect_prompt :
  ?id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  unit ->
  aws_connect_prompt

val yojson_of_aws_connect_prompt : aws_connect_prompt -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  prompt_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  instance_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
