(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_configuration = {
  state_machine_version_arn : string prop;
      (** state_machine_version_arn *)
  weight : float prop;  (** weight *)
}

type aws_sfn_alias

val aws_sfn_alias :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  statemachine_arn:string prop ->
  unit ->
  aws_sfn_alias

val yojson_of_aws_sfn_alias : aws_sfn_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  routing_configuration : routing_configuration list prop;
  statemachine_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  statemachine_arn:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  name:string prop ->
  statemachine_arn:string prop ->
  string ->
  t Tf_core.resource
