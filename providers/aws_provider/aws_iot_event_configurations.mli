(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_event_configurations

type t = private {
  event_configurations : (string * bool) list prop;
  id : string prop;
}

val aws_iot_event_configurations :
  ?id:string prop ->
  event_configurations:(string * bool prop) list ->
  string ->
  t
