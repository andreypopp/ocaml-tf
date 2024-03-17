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
  identity_provider : string;  (** identity_provider *)
  issuer_uri : string;  (** issuer_uri *)
  workload_pool : string;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_azure_cluster

val google_container_azure_cluster :
  ?annotations:(string * string) list ->
  ?client:string ->
  ?description:string ->
  ?timeouts:google_container_azure_cluster__timeouts ->
  azure_region:string ->
  location:string ->
  name:string ->
  resource_group_id:string ->
  authorization:google_container_azure_cluster__authorization list ->
  azure_services_authentication:
    google_container_azure_cluster__azure_services_authentication
    list ->
  control_plane:google_container_azure_cluster__control_plane list ->
  fleet:google_container_azure_cluster__fleet list ->
  networking:google_container_azure_cluster__networking list ->
  string ->
  unit
