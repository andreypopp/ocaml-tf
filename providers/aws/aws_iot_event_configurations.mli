(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_event_configurations

val aws_iot_event_configurations :
  ?id:string prop ->
  event_configurations:(string * bool prop) list ->
  unit ->
  aws_iot_event_configurations

val yojson_of_aws_iot_event_configurations :
  aws_iot_event_configurations -> json

(** RESOURCE REGISTRATION *)

type t = private {
  event_configurations : (string * bool) list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  event_configurations:(string * bool prop) list ->
  string ->
  t

val make :
  ?id:string prop ->
  event_configurations:(string * bool prop) list ->
  string ->
  t Tf_core.resource
