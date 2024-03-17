(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_azure_cluster__authorization__admin_groups
type google_container_azure_cluster__authorization__admin_users
type google_container_azure_cluster__authorization
type google_container_azure_cluster__azure_services_authentication

type google_container_azure_cluster__control_plane__database_encryption

type google_container_azure_cluster__control_plane__main_volume
type google_container_azure_cluster__control_plane__proxy_config
type google_container_azure_cluster__control_plane__replica_placements
type google_container_azure_cluster__control_plane__root_volume
type google_container_azure_cluster__control_plane__ssh_config
type google_container_azure_cluster__control_plane
type google_container_azure_cluster__fleet
type google_container_azure_cluster__networking
type google_container_azure_cluster__timeouts

type google_container_azure_cluster__workload_identity_config = {
  identity_provider : string prop;  (** identity_provider *)
  issuer_uri : string prop;  (** issuer_uri *)
  workload_pool : string prop;  (** workload_pool *)
}

type google_container_azure_cluster

type t = private {
  annotations : (string * string) list prop;
  azure_region : string prop;
  client : string prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  endpoint : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  resource_group_id : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config :
    google_container_azure_cluster__workload_identity_config list
    prop;
}

val google_container_azure_cluster :
  ?annotations:(string * string prop) list ->
  ?client:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_container_azure_cluster__timeouts ->
  azure_region:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_id:string prop ->
  authorization:google_container_azure_cluster__authorization list ->
  azure_services_authentication:
    google_container_azure_cluster__azure_services_authentication
    list ->
  control_plane:google_container_azure_cluster__control_plane list ->
  fleet:google_container_azure_cluster__fleet list ->
  networking:google_container_azure_cluster__networking list ->
  string ->
  t
