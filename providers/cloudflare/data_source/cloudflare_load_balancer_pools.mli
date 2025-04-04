(** A datasource to find Load Balancer Pools. *)

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
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type pools__origins = {
  address : string prop;  (** address *)
  enabled : bool prop;  (** enabled *)
  header : pools__origins__header list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** header *)
  name : string prop;  (** name *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  weight : float prop;  (** weight *)
}

type pools

val pools : unit -> pools

type cloudflare_load_balancer_pools

val cloudflare_load_balancer_pools :
  ?id:string prop ->
  ?filter:filter list ->
  ?pools:pools list ->
  account_id:string prop ->
  unit ->
  cloudflare_load_balancer_pools

val yojson_of_cloudflare_load_balancer_pools :
  cloudflare_load_balancer_pools -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?filter:filter list ->
  ?pools:pools list ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?filter:filter list ->
  ?pools:pools list ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
