(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_container_azure_node_pool__autoscaling
type google_container_azure_node_pool__config__proxy_config
type google_container_azure_node_pool__config__root_volume
type google_container_azure_node_pool__config__ssh_config
type google_container_azure_node_pool__config
type google_container_azure_node_pool__management
type google_container_azure_node_pool__max_pods_constraint
type google_container_azure_node_pool__timeouts
type google_container_azure_node_pool

type t = private {
  annotations : (string * string) list prop;
  azure_availability_zone : string prop;
  cluster : string prop;
  create_time : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  subnet_id : string prop;
  uid : string prop;
  update_time : string prop;
  version : string prop;
}

val google_container_azure_node_pool :
  ?annotations:(string * string prop) list ->
  ?azure_availability_zone:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_container_azure_node_pool__timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  subnet_id:string prop ->
  version:string prop ->
  autoscaling:google_container_azure_node_pool__autoscaling list ->
  config:google_container_azure_node_pool__config list ->
  management:google_container_azure_node_pool__management list ->
  max_pods_constraint:
    google_container_azure_node_pool__max_pods_constraint list ->
  string ->
  t
