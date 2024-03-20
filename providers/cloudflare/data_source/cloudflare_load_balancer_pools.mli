(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter : ?name:string prop -> unit -> filter

type pools__load_shedding = {
  default_percent : float prop;  (** default_percent *)
  default_policy : string prop;  (** default_policy *)
  session_percent : float prop;  (** session_percent *)
  session_policy : string prop;  (** session_policy *)
}

type pools__origins__header = {
  header : string prop;  (** header *)
  values : string prop list;  (** values *)
}

type pools__origins = {
  address : string prop;  (** address *)
  enabled : bool prop;  (** enabled *)
  header : pools__origins__header list;  (** header *)
  name : string prop;  (** name *)
  weight : float prop;  (** weight *)
}

type pools

val pools : unit -> pools

type cloudflare_load_balancer_pools

val cloudflare_load_balancer_pools :
  ?id:string prop ->
  account_id:string prop ->
  filter:filter list ->
  pools:pools list ->
  unit ->
  cloudflare_load_balancer_pools

val yojson_of_cloudflare_load_balancer_pools :
  cloudflare_load_balancer_pools -> json

(** RESOURCE REGISTRATION *)

type t = private { account_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  filter:filter list ->
  pools:pools list ->
  string ->
  t

val make :
  ?id:string prop ->
  account_id:string prop ->
  filter:filter list ->
  pools:pools list ->
  string ->
  t Tf_core.resource
