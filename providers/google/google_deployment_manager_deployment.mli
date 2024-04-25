(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type labels

val labels : ?key:string prop -> ?value:string prop -> unit -> labels

type target__config

val target__config : content:string prop -> unit -> target__config

type target__imports

val target__imports :
  ?content:string prop ->
  ?name:string prop ->
  unit ->
  target__imports

type target

val target :
  ?imports:target__imports list ->
  config:target__config list ->
  unit ->
  target

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_deployment_manager_deployment

val google_deployment_manager_deployment :
  ?create_policy:string prop ->
  ?delete_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  labels:labels list ->
  target:target list ->
  unit ->
  google_deployment_manager_deployment

val yojson_of_google_deployment_manager_deployment :
  google_deployment_manager_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_policy : string prop;
  delete_policy : string prop;
  deployment_id : string prop;
  description : string prop;
  id : string prop;
  manifest : string prop;
  name : string prop;
  preview : bool prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?create_policy:string prop ->
  ?delete_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  labels:labels list ->
  target:target list ->
  string ->
  t

val make :
  ?create_policy:string prop ->
  ?delete_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?preview:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  labels:labels list ->
  target:target list ->
  string ->
  t Tf_core.resource
