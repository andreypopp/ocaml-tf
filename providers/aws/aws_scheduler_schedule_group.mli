(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_scheduler_schedule_group

val aws_scheduler_schedule_group :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  unit ->
  aws_scheduler_schedule_group

val yojson_of_aws_scheduler_schedule_group :
  aws_scheduler_schedule_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  creation_date : string prop;
  id : string prop;
  last_modification_date : string prop;
  name : string prop;
  name_prefix : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
