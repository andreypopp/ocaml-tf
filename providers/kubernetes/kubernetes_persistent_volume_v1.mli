(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type metadata

val metadata :
  ?annotations:(string * string prop) list ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  unit ->
  metadata

type spec__claim_ref

val spec__claim_ref :
  ?namespace:string prop ->
  name:string prop ->
  unit ->
  spec__claim_ref

type spec__node_affinity__required__node_selector_term__match_expressions

val spec__node_affinity__required__node_selector_term__match_expressions :
  ?values:string prop list ->
  key:string prop ->
  operator:string prop ->
  unit ->
  spec__node_affinity__required__node_selector_term__match_expressions

type spec__node_affinity__required__node_selector_term__match_fields

val spec__node_affinity__required__node_selector_term__match_fields :
  ?values:string prop list ->
  key:string prop ->
  operator:string prop ->
  unit ->
  spec__node_affinity__required__node_selector_term__match_fields

type spec__node_affinity__required__node_selector_term

val spec__node_affinity__required__node_selector_term :
  ?match_expressions:
    spec__node_affinity__required__node_selector_term__match_expressions
    list ->
  ?match_fields:
    spec__node_affinity__required__node_selector_term__match_fields
    list ->
  unit ->
  spec__node_affinity__required__node_selector_term

type spec__node_affinity__required

val spec__node_affinity__required :
  node_selector_term:
    spec__node_affinity__required__node_selector_term list ->
  unit ->
  spec__node_affinity__required

type spec__node_affinity

val spec__node_affinity :
  ?required:spec__node_affinity__required list ->
  unit ->
  spec__node_affinity

type spec__persistent_volume_source__aws_elastic_block_store

val spec__persistent_volume_source__aws_elastic_block_store :
  ?fs_type:string prop ->
  ?partition:float prop ->
  ?read_only:bool prop ->
  volume_id:string prop ->
  unit ->
  spec__persistent_volume_source__aws_elastic_block_store

type spec__persistent_volume_source__azure_disk

val spec__persistent_volume_source__azure_disk :
  ?fs_type:string prop ->
  ?kind:string prop ->
  ?read_only:bool prop ->
  caching_mode:string prop ->
  data_disk_uri:string prop ->
  disk_name:string prop ->
  unit ->
  spec__persistent_volume_source__azure_disk

type spec__persistent_volume_source__azure_file

val spec__persistent_volume_source__azure_file :
  ?read_only:bool prop ->
  ?secret_namespace:string prop ->
  secret_name:string prop ->
  share_name:string prop ->
  unit ->
  spec__persistent_volume_source__azure_file

type spec__persistent_volume_source__ceph_fs__secret_ref

val spec__persistent_volume_source__ceph_fs__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__ceph_fs__secret_ref

type spec__persistent_volume_source__ceph_fs

val spec__persistent_volume_source__ceph_fs :
  ?path:string prop ->
  ?read_only:bool prop ->
  ?secret_file:string prop ->
  ?user:string prop ->
  ?secret_ref:
    spec__persistent_volume_source__ceph_fs__secret_ref list ->
  monitors:string prop list ->
  unit ->
  spec__persistent_volume_source__ceph_fs

type spec__persistent_volume_source__cinder

val spec__persistent_volume_source__cinder :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  volume_id:string prop ->
  unit ->
  spec__persistent_volume_source__cinder

type spec__persistent_volume_source__csi__controller_expand_secret_ref

val spec__persistent_volume_source__csi__controller_expand_secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__csi__controller_expand_secret_ref

type spec__persistent_volume_source__csi__controller_publish_secret_ref

val spec__persistent_volume_source__csi__controller_publish_secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__csi__controller_publish_secret_ref

type spec__persistent_volume_source__csi__node_publish_secret_ref

val spec__persistent_volume_source__csi__node_publish_secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__csi__node_publish_secret_ref

type spec__persistent_volume_source__csi__node_stage_secret_ref

val spec__persistent_volume_source__csi__node_stage_secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__csi__node_stage_secret_ref

type spec__persistent_volume_source__csi

val spec__persistent_volume_source__csi :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  ?volume_attributes:(string * string prop) list ->
  ?controller_expand_secret_ref:
    spec__persistent_volume_source__csi__controller_expand_secret_ref
    list ->
  ?controller_publish_secret_ref:
    spec__persistent_volume_source__csi__controller_publish_secret_ref
    list ->
  ?node_publish_secret_ref:
    spec__persistent_volume_source__csi__node_publish_secret_ref list ->
  ?node_stage_secret_ref:
    spec__persistent_volume_source__csi__node_stage_secret_ref list ->
  driver:string prop ->
  volume_handle:string prop ->
  unit ->
  spec__persistent_volume_source__csi

type spec__persistent_volume_source__fc

val spec__persistent_volume_source__fc :
  ?fs_type:string prop ->
  ?read_only:bool prop ->
  lun:float prop ->
  target_ww_ns:string prop list ->
  unit ->
  spec__persistent_volume_source__fc

type spec__persistent_volume_source__flex_volume__secret_ref

val spec__persistent_volume_source__flex_volume__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__flex_volume__secret_ref

type spec__persistent_volume_source__flex_volume

val spec__persistent_volume_source__flex_volume :
  ?fs_type:string prop ->
  ?options:(string * string prop) list ->
  ?read_only:bool prop ->
  ?secret_ref:
    spec__persistent_volume_source__flex_volume__secret_ref list ->
  driver:string prop ->
  unit ->
  spec__persistent_volume_source__flex_volume

type spec__persistent_volume_source__flocker

val spec__persistent_volume_source__flocker :
  ?dataset_name:string prop ->
  ?dataset_uuid:string prop ->
  unit ->
  spec__persistent_volume_source__flocker

type spec__persistent_volume_source__gce_persistent_disk

val spec__persistent_volume_source__gce_persistent_disk :
  ?fs_type:string prop ->
  ?partition:float prop ->
  ?read_only:bool prop ->
  pd_name:string prop ->
  unit ->
  spec__persistent_volume_source__gce_persistent_disk

type spec__persistent_volume_source__glusterfs

val spec__persistent_volume_source__glusterfs :
  ?read_only:bool prop ->
  endpoints_name:string prop ->
  path:string prop ->
  unit ->
  spec__persistent_volume_source__glusterfs

type spec__persistent_volume_source__host_path

val spec__persistent_volume_source__host_path :
  ?path:string prop ->
  ?type_:string prop ->
  unit ->
  spec__persistent_volume_source__host_path

type spec__persistent_volume_source__iscsi

val spec__persistent_volume_source__iscsi :
  ?fs_type:string prop ->
  ?iscsi_interface:string prop ->
  ?lun:float prop ->
  ?read_only:bool prop ->
  iqn:string prop ->
  target_portal:string prop ->
  unit ->
  spec__persistent_volume_source__iscsi

type spec__persistent_volume_source__local

val spec__persistent_volume_source__local :
  ?path:string prop -> unit -> spec__persistent_volume_source__local

type spec__persistent_volume_source__nfs

val spec__persistent_volume_source__nfs :
  ?read_only:bool prop ->
  path:string prop ->
  server:string prop ->
  unit ->
  spec__persistent_volume_source__nfs

type spec__persistent_volume_source__photon_persistent_disk

val spec__persistent_volume_source__photon_persistent_disk :
  ?fs_type:string prop ->
  pd_id:string prop ->
  unit ->
  spec__persistent_volume_source__photon_persistent_disk

type spec__persistent_volume_source__quobyte

val spec__persistent_volume_source__quobyte :
  ?group:string prop ->
  ?read_only:bool prop ->
  ?user:string prop ->
  registry:string prop ->
  volume:string prop ->
  unit ->
  spec__persistent_volume_source__quobyte

type spec__persistent_volume_source__rbd__secret_ref

val spec__persistent_volume_source__rbd__secret_ref :
  ?name:string prop ->
  ?namespace:string prop ->
  unit ->
  spec__persistent_volume_source__rbd__secret_ref

type spec__persistent_volume_source__rbd

val spec__persistent_volume_source__rbd :
  ?fs_type:string prop ->
  ?keyring:string prop ->
  ?rados_user:string prop ->
  ?rbd_pool:string prop ->
  ?read_only:bool prop ->
  ?secret_ref:spec__persistent_volume_source__rbd__secret_ref list ->
  ceph_monitors:string prop list ->
  rbd_image:string prop ->
  unit ->
  spec__persistent_volume_source__rbd

type spec__persistent_volume_source__vsphere_volume

val spec__persistent_volume_source__vsphere_volume :
  ?fs_type:string prop ->
  volume_path:string prop ->
  unit ->
  spec__persistent_volume_source__vsphere_volume

type spec__persistent_volume_source

val spec__persistent_volume_source :
  ?aws_elastic_block_store:
    spec__persistent_volume_source__aws_elastic_block_store list ->
  ?azure_disk:spec__persistent_volume_source__azure_disk list ->
  ?azure_file:spec__persistent_volume_source__azure_file list ->
  ?ceph_fs:spec__persistent_volume_source__ceph_fs list ->
  ?cinder:spec__persistent_volume_source__cinder list ->
  ?csi:spec__persistent_volume_source__csi list ->
  ?fc:spec__persistent_volume_source__fc list ->
  ?flex_volume:spec__persistent_volume_source__flex_volume list ->
  ?flocker:spec__persistent_volume_source__flocker list ->
  ?gce_persistent_disk:
    spec__persistent_volume_source__gce_persistent_disk list ->
  ?glusterfs:spec__persistent_volume_source__glusterfs list ->
  ?host_path:spec__persistent_volume_source__host_path list ->
  ?iscsi:spec__persistent_volume_source__iscsi list ->
  ?local:spec__persistent_volume_source__local list ->
  ?nfs:spec__persistent_volume_source__nfs list ->
  ?photon_persistent_disk:
    spec__persistent_volume_source__photon_persistent_disk list ->
  ?quobyte:spec__persistent_volume_source__quobyte list ->
  ?rbd:spec__persistent_volume_source__rbd list ->
  ?vsphere_volume:spec__persistent_volume_source__vsphere_volume list ->
  unit ->
  spec__persistent_volume_source

type spec

val spec :
  ?mount_options:string prop list ->
  ?persistent_volume_reclaim_policy:string prop ->
  ?storage_class_name:string prop ->
  ?volume_mode:string prop ->
  ?claim_ref:spec__claim_ref list ->
  ?node_affinity:spec__node_affinity list ->
  access_modes:string prop list ->
  capacity:(string * string prop) list ->
  persistent_volume_source:spec__persistent_volume_source list ->
  unit ->
  spec

type timeouts

val timeouts : ?create:string prop -> unit -> timeouts

type kubernetes_persistent_volume_v1

val kubernetes_persistent_volume_v1 :
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  unit ->
  kubernetes_persistent_volume_v1

val yojson_of_kubernetes_persistent_volume_v1 :
  kubernetes_persistent_volume_v1 -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  metadata:metadata list ->
  spec:spec list ->
  string ->
  t Tf_core.resource
