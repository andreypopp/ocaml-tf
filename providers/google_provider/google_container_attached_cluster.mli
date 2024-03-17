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
  message : string prop;  (** message *)
}

type google_container_attached_cluster__workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}

type google_container_attached_cluster

type t = private {
  annotations : (string * string) list prop;
  cluster_region : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  distribution : string prop;
  effective_annotations : (string * string) list prop;
  errors : google_container_attached_cluster__errors list prop;
  id : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  platform_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config :
    google_container_attached_cluster__workload_identity_config list
    prop;
}

val google_container_attached_cluster :
  ?annotations:(string * string prop) list ->
  ?deletion_policy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_container_attached_cluster__timeouts ->
  distribution:string prop ->
  location:string prop ->
  name:string prop ->
  platform_version:string prop ->
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
  t
