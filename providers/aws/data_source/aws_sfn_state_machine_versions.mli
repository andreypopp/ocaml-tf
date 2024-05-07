(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sfn_state_machine_versions

val aws_sfn_state_machine_versions :
  ?id:string prop ->
  statemachine_arn:string prop ->
  unit ->
  aws_sfn_state_machine_versions

val yojson_of_aws_sfn_state_machine_versions :
  aws_sfn_state_machine_versions -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  statemachine_arn : string prop;
  statemachine_versions : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  statemachine_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  statemachine_arn:string prop ->
  string ->
  t Tf_core.resource
