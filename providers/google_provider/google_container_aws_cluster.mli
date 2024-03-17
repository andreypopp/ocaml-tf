(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_aws_cluster__authorization__admin_groups
type google_container_aws_cluster__authorization__admin_users
type google_container_aws_cluster__authorization
type google_container_aws_cluster__binary_authorization

type google_container_aws_cluster__control_plane__aws_services_authentication

type google_container_aws_cluster__control_plane__config_encryption
type google_container_aws_cluster__control_plane__database_encryption
type google_container_aws_cluster__control_plane__main_volume
type google_container_aws_cluster__control_plane__proxy_config
type google_container_aws_cluster__control_plane__root_volume
type google_container_aws_cluster__control_plane__ssh_config
type google_container_aws_cluster__control_plane
type google_container_aws_cluster__fleet
type google_container_aws_cluster__networking
type google_container_aws_cluster__timeouts

type google_container_aws_cluster__workload_identity_config = {
  identity_provider : string;  (** identity_provider *)
  issuer_uri : string;  (** issuer_uri *)
  workload_pool : string;  (** workload_pool *)
}
[@@deriving yojson_of]

type google_container_aws_cluster

val google_container_aws_cluster :
  ?annotations:(string * string) list ->
  ?description:string ->
  ?timeouts:google_container_aws_cluster__timeouts ->
  aws_region:string ->
  location:string ->
  name:string ->
  authorization:google_container_aws_cluster__authorization list ->
  binary_authorization:
    google_container_aws_cluster__binary_authorization list ->
  control_plane:google_container_aws_cluster__control_plane list ->
  fleet:google_container_aws_cluster__fleet list ->
  networking:google_container_aws_cluster__networking list ->
  string ->
  unit
