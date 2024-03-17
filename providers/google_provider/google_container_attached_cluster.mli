(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_attached_cluster__authorization
type google_container_attached_cluster__binary_authorization
type google_container_attached_cluster__fleet

type google_container_attached_cluster__logging_config__component_config

type google_container_attached_cluster__logging_config

type google_container_attached_cluster__monitoring_config__managed_prometheus_config

type google_container_attached_cluster__monitoring_config
type google_container_attached_cluster__oidc_config

type google_container_attached_cluster__proxy_config__kubernetes_secret

type google_container_attached_cluster__proxy_config
type google_container_attached_cluster__timeouts

type google_container_attached_cluster__errors = {
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_container_attached_cluster__workload_identity_config = {
  identity_provider : string;  (** identity_provider *)
  issuer_uri : string;  (** issuer_uri *)
  workload_pool : string;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_attached_cluster

val google_container_attached_cluster :
  ?annotations:(string * string) list ->
  ?deletion_policy:string ->
  ?description:string ->
  ?timeouts:google_container_attached_cluster__timeouts ->
  distribution:string ->
  location:string ->
  name:string ->
  platform_version:string ->
  authorization:google_container_attached_cluster__authorization list ->
  binary_authorization:
    google_container_attached_cluster__binary_authorization list ->
  fleet:google_container_attached_cluster__fleet list ->
  logging_config:
    google_container_attached_cluster__logging_config list ->
  monitoring_config:
    google_container_attached_cluster__monitoring_config list ->
  oidc_config:google_container_attached_cluster__oidc_config list ->
  proxy_config:google_container_attached_cluster__proxy_config list ->
  string ->
  unit
