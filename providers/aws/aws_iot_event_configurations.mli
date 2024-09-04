(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_event_configurations

val aws_iot_event_configurations :
  ?id:string prop ->
  event_configurations:bool prop Tf_core.assoc ->
  unit ->
  aws_iot_event_configurations

val yojson_of_aws_iot_event_configurations :
  aws_iot_event_configurations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  event_configurations : bool Tf_core.assoc prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  event_configurations:bool prop Tf_core.assoc ->
  string ->
  t

val make :
  ?id:string prop ->
  event_configurations:bool prop Tf_core.assoc ->
  string ->
  t Tf_core.resource
