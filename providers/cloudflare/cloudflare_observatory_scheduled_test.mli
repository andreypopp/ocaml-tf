(** Provides a Cloudflare Observatory Scheduled Test resource. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type cloudflare_observatory_scheduled_test

val cloudflare_observatory_scheduled_test :
  ?id:string prop ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  region:string prop ->
  url:string prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_observatory_scheduled_test

val yojson_of_cloudflare_observatory_scheduled_test :
  cloudflare_observatory_scheduled_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  frequency : string prop;
  id : string prop;
  region : string prop;
  url : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  region:string prop ->
  url:string prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  frequency:string prop ->
  region:string prop ->
  url:string prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
