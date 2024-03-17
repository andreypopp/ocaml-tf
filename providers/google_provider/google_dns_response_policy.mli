(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_dns_response_policy__gke_clusters
type google_dns_response_policy__networks
type google_dns_response_policy__timeouts
type google_dns_response_policy

val google_dns_response_policy :
  ?description:string ->
  ?timeouts:google_dns_response_policy__timeouts ->
  response_policy_name:string ->
  gke_clusters:google_dns_response_policy__gke_clusters list ->
  networks:google_dns_response_policy__networks list ->
  string ->
  unit
