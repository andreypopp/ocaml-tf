(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type single_cluster_routing

val single_cluster_routing :
  ?allow_transactional_writes:bool prop ->
  cluster_id:string prop ->
  unit ->
  single_cluster_routing

type standard_isolation

val standard_isolation :
  priority:string prop -> unit -> standard_isolation

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigtable_app_profile

val google_bigtable_app_profile :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_warnings:bool prop ->
  ?instance:string prop ->
  ?multi_cluster_routing_cluster_ids:string prop list ->
  ?multi_cluster_routing_use_any:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_profile_id:string prop ->
  single_cluster_routing:single_cluster_routing list ->
  standard_isolation:standard_isolation list ->
  unit ->
  google_bigtable_app_profile

val yojson_of_google_bigtable_app_profile :
  google_bigtable_app_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  app_profile_id : string prop;
  description : string prop;
  id : string prop;
  ignore_warnings : bool prop;
  instance : string prop;
  multi_cluster_routing_cluster_ids : string list prop;
  multi_cluster_routing_use_any : bool prop;
  name : string prop;
  project : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_warnings:bool prop ->
  ?instance:string prop ->
  ?multi_cluster_routing_cluster_ids:string prop list ->
  ?multi_cluster_routing_use_any:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_profile_id:string prop ->
  single_cluster_routing:single_cluster_routing list ->
  standard_isolation:standard_isolation list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?ignore_warnings:bool prop ->
  ?instance:string prop ->
  ?multi_cluster_routing_cluster_ids:string prop list ->
  ?multi_cluster_routing_use_any:bool prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  app_profile_id:string prop ->
  single_cluster_routing:single_cluster_routing list ->
  standard_isolation:standard_isolation list ->
  string ->
  t Tf_core.resource
