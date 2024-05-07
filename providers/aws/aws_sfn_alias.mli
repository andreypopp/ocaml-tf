(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type routing_configuration

val routing_configuration :
  state_machine_version_arn:string prop ->
  weight:float prop ->
  unit ->
  routing_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_sfn_alias

val aws_sfn_alias :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing_configuration:routing_configuration list ->
  unit ->
  aws_sfn_alias

val yojson_of_aws_sfn_alias : aws_sfn_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing_configuration:routing_configuration list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  routing_configuration:routing_configuration list ->
  string ->
  t Tf_core.resource
