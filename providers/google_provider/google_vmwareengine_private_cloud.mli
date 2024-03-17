(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_private_cloud__management_cluster__node_type_configs

type google_vmwareengine_private_cloud__management_cluster
type google_vmwareengine_private_cloud__network_config
type google_vmwareengine_private_cloud__timeouts

type google_vmwareengine_private_cloud__hcx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type google_vmwareengine_private_cloud__nsx = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type google_vmwareengine_private_cloud__vcenter = {
  fqdn : string prop;  (** fqdn *)
  internal_ip : string prop;  (** internal_ip *)
  state : string prop;  (** state *)
  version : string prop;  (** version *)
}

type google_vmwareengine_private_cloud

type t = private {
  description : string prop;
  hcx : google_vmwareengine_private_cloud__hcx list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  nsx : google_vmwareengine_private_cloud__nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : google_vmwareengine_private_cloud__vcenter list prop;
}

val google_vmwareengine_private_cloud :
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?type_:string prop ->
  ?timeouts:google_vmwareengine_private_cloud__timeouts ->
  location:string prop ->
  name:string prop ->
  management_cluster:
    google_vmwareengine_private_cloud__management_cluster list ->
  network_config:
    google_vmwareengine_private_cloud__network_config list ->
  string ->
  t
