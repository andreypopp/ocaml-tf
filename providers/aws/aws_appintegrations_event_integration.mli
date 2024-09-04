(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_filter

val event_filter : source:string prop -> unit -> event_filter

type aws_appintegrations_event_integration

val aws_appintegrations_event_integration :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:event_filter list ->
  unit ->
  aws_appintegrations_event_integration

val yojson_of_aws_appintegrations_event_integration :
  aws_appintegrations_event_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:event_filter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  eventbridge_bus:string prop ->
  name:string prop ->
  event_filter:event_filter list ->
  string ->
  t Tf_core.resource
