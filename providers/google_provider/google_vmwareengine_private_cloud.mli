(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_private_cloud__management_cluster__node_type_configs

type google_vmwareengine_private_cloud__management_cluster
type google_vmwareengine_private_cloud__network_config
type google_vmwareengine_private_cloud__timeouts

type google_vmwareengine_private_cloud__hcx = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud__nsx = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud__vcenter = {
  fqdn : string;  (** fqdn *)
  internal_ip : string;  (** internal_ip *)
  state : string;  (** state *)
  version : string;  (** version *)
}
[@@deriving yojson_of]

type google_vmwareengine_private_cloud

val google_vmwareengine_private_cloud :
  ?description:string ->
  ?type_:string ->
  ?timeouts:google_vmwareengine_private_cloud__timeouts ->
  location:string ->
  name:string ->
  management_cluster:
    google_vmwareengine_private_cloud__management_cluster list ->
  network_config:
    google_vmwareengine_private_cloud__network_config list ->
  string ->
  unit
