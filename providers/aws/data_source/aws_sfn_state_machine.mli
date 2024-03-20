(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sfn_state_machine

val aws_sfn_state_machine :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_sfn_state_machine

val yojson_of_aws_sfn_state_machine : aws_sfn_state_machine -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_date : string prop;
  definition : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  revision_id : string prop;
  role_arn : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
