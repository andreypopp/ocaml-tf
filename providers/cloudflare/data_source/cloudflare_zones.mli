(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type zones = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type filter

val filter :
  ?account_id:string prop ->
  ?lookup_type:string prop ->
  ?match_:string prop ->
  ?name:string prop ->
  ?paused:bool prop ->
  ?status:string prop ->
  unit ->
  filter

type cloudflare_zones

val cloudflare_zones :
  ?id:string prop -> filter:filter list -> unit -> cloudflare_zones

val yojson_of_cloudflare_zones : cloudflare_zones -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; zones : zones list prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
