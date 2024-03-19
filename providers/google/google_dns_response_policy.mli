(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type gke_clusters

val gke_clusters :
  gke_cluster_name:string prop -> unit -> gke_clusters

type networks

val networks : network_url:string prop -> unit -> networks

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_dns_response_policy

val google_dns_response_policy :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  response_policy_name:string prop ->
  gke_clusters:gke_clusters list ->
  networks:networks list ->
  unit ->
  google_dns_response_policy

val yojson_of_google_dns_response_policy :
  google_dns_response_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  id : string prop;
  project : string prop;
  response_policy_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  response_policy_name:string prop ->
  gke_clusters:gke_clusters list ->
  networks:networks list ->
  string ->
  t
