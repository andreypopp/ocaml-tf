(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type event_filter

val event_filter : source:string prop -> unit -> event_filter

type aws_appintegrations_event_integration

val aws_appintegrations_event_integration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:event_filter list ->
  unit ->
  aws_appintegrations_event_integration

val yojson_of_aws_appintegrations_event_integration :
  aws_appintegrations_event_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:event_filter list ->
  string ->
  t
