(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type load_shedding

val load_shedding :
  ?default_percent:float prop ->
  ?default_policy:string prop ->
  ?session_percent:float prop ->
  ?session_policy:string prop ->
  unit ->
  load_shedding

type origin_steering

val origin_steering : ?policy:string prop -> unit -> origin_steering

type origins__header

val origins__header :
  header:string prop ->
  values:string prop list ->
  unit ->
  origins__header

type origins

val origins :
  ?enabled:bool prop ->
  ?weight:float prop ->
  address:string prop ->
  name:string prop ->
  header:origins__header list ->
  unit ->
  origins

type cloudflare_load_balancer_pool

val cloudflare_load_balancer_pool :
  ?check_regions:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?latitude:float prop ->
  ?longitude:float prop ->
  ?minimum_origins:float prop ->
  ?monitor:string prop ->
  ?notification_email:string prop ->
  account_id:string prop ->
  name:string prop ->
  load_shedding:load_shedding list ->
  origin_steering:origin_steering list ->
  origins:origins list ->
  unit ->
  cloudflare_load_balancer_pool

val yojson_of_cloudflare_load_balancer_pool :
  cloudflare_load_balancer_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  check_regions : string list prop;
  created_on : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
  latitude : float prop;
  longitude : float prop;
  minimum_origins : float prop;
  modified_on : string prop;
  monitor : string prop;
  name : string prop;
  notification_email : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?check_regions:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?latitude:float prop ->
  ?longitude:float prop ->
  ?minimum_origins:float prop ->
  ?monitor:string prop ->
  ?notification_email:string prop ->
  account_id:string prop ->
  name:string prop ->
  load_shedding:load_shedding list ->
  origin_steering:origin_steering list ->
  origins:origins list ->
  string ->
  t

val make :
  ?check_regions:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?latitude:float prop ->
  ?longitude:float prop ->
  ?minimum_origins:float prop ->
  ?monitor:string prop ->
  ?notification_email:string prop ->
  account_id:string prop ->
  name:string prop ->
  load_shedding:load_shedding list ->
  origin_steering:origin_steering list ->
  origins:origins list ->
  string ->
  t Tf_core.resource
