(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type kubernetes_persistent_volume__metadata = {
  annotations : (string * string) list option; [@option]
      (** An unstructured key value map stored with the persistent volume that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  generation : float;
      (** A sequence number representing a specific generation of the desired state. *)
  labels : (string * string) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string option; [@option]
      (** Name of the persistent volume, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  resource_version : string;
      (** An opaque value that represents the internal version of this persistent volume that can be used by clients to determine when persistent volume has changed. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency *)
  uid : string;
      (** The unique in time and space value for this persistent volume. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids *)
}
[@@deriving yojson_of]
(** Standard persistent volume's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type kubernetes_persistent_volume__spec__claim_ref = {
  name : string;  (** The name of the PersistentVolumeClaim *)
  namespace : string option; [@option]
      (** The namespace of the PersistentVolumeClaim. Uses 'default' namespace if none is specified. *)
}
[@@deriving yojson_of]
(** A reference to the persistent volume claim details for statically managed PVs. More Info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#binding *)

type kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term__match_expressions = {
  key : string;  (** The label key that the selector applies to. *)
  operator : string;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's labels. The requirements are ANDed. *)

type kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term__match_fields = {
  key : string;  (** The label key that the selector applies to. *)
  operator : string;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's fields. The requirements are ANDed. *)

type kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term = {
  match_expressions :
    kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term__match_expressions
    list;
  match_fields :
    kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term__match_fields
    list;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term *)

type kubernetes_persistent_volume__spec__node_affinity__required = {
  node_selector_term :
    kubernetes_persistent_volume__spec__node_affinity__required__node_selector_term
    list;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume__spec__node_affinity__required *)

type kubernetes_persistent_volume__spec__node_affinity = {
  required :
    kubernetes_persistent_volume__spec__node_affinity__required list;
}
[@@deriving yojson_of]
(** A description of the persistent volume's node affinity. More info: https://kubernetes.io/docs/concepts/storage/volumes/#local *)

type kubernetes_persistent_volume__spec__persistent_volume_source__aws_elastic_block_store = {
  fs_type : string option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  partition : float option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). *)
  read_only : bool option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  volume_id : string;
      (** Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
}
[@@deriving yojson_of]
(** Represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)

type kubernetes_persistent_volume__spec__persistent_volume_source__azure_disk = {
  caching_mode : string;
      (** Host Caching mode: None, Read Only, Read Write. *)
  data_disk_uri : string;
      (** The URI the data disk in the blob storage *)
  disk_name : string;
      (** The Name of the data disk in the blob storage *)
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  kind : string option; [@option]
      (** The type for the data disk. Expected values: Shared, Dedicated, Managed. Defaults to Shared *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
}
[@@deriving yojson_of]
(** Represents an Azure Data Disk mount on the host and bind mount to the pod. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__azure_file = {
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  secret_name : string;
      (** The name of secret that contains Azure Storage Account Name and Key *)
  secret_namespace : string option; [@option]
      (** The namespace of the secret that contains Azure Storage Account Name and Key. For Kubernetes up to 1.18.x the default is the same as the Pod. For Kubernetes 1.19.x and later the default is default namespace. *)
  share_name : string;  (** Share Name *)
}
[@@deriving yojson_of]
(** Represents an Azure File Service mount on the host and bind mount to the pod. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__ceph_fs__secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)

type kubernetes_persistent_volume__spec__persistent_volume_source__ceph_fs = {
  monitors : string list;
      (** Monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  path : string option; [@option]
      (** Used as the mounted root, rather than the full Ceph tree, default is / *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to `false` (read/write). More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_file : string option; [@option]
      (** The path to key ring for User, default is `/etc/ceph/user.secret`. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  user : string option; [@option]
      (** User is the rados user name, default is admin. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__ceph_fs__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a Ceph FS mount on the host that shares a pod's lifetime *)

type kubernetes_persistent_volume__spec__persistent_volume_source__cinder = {
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  volume_id : string;
      (** Volume ID used to identify the volume in Cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
}
[@@deriving yojson_of]
(** Represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)

type kubernetes_persistent_volume__spec__persistent_volume_source__csi__controller_expand_secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__csi__controller_publish_secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__csi__node_publish_secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__csi__node_stage_secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__csi = {
  driver : string;
      (** the name of the volume driver to use. More info: https://kubernetes.io/docs/concepts/storage/volumes/#csi *)
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  read_only : bool option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)
  volume_attributes : (string * string) list option; [@option]
      (** Attributes of the volume to publish. *)
  volume_handle : string;
      (** A string value that uniquely identifies the volume. More info: https://kubernetes.io/docs/concepts/storage/volumes/#csi *)
  controller_expand_secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__csi__controller_expand_secret_ref
    list;
  controller_publish_secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__csi__controller_publish_secret_ref
    list;
  node_publish_secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__csi__node_publish_secret_ref
    list;
  node_stage_secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__csi__node_stage_secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a CSI Volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)

type kubernetes_persistent_volume__spec__persistent_volume_source__fc = {
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  lun : float;  (** FC target lun number *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  target_ww_ns : string list;  (** FC target worldwide names (WWNs) *)
}
[@@deriving yojson_of]
(** Represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__flex_volume__secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__flex_volume = {
  driver : string;
      (** Driver is the name of the driver to use for this volume. *)
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. The default filesystem depends on FlexVolume script. *)
  options : (string * string) list option; [@option]
      (** Extra command options if any. *)
  read_only : bool option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false (read/write). *)
  secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__flex_volume__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a generic volume resource that is provisioned/attached using an exec based plugin. This is an alpha feature and may change in future. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__flocker = {
  dataset_name : string option; [@option]
      (** Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated *)
  dataset_uuid : string option; [@option]
      (** UUID of the dataset. This is unique identifier of a Flocker dataset *)
}
[@@deriving yojson_of]
(** Represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running *)

type kubernetes_persistent_volume__spec__persistent_volume_source__gce_persistent_disk = {
  fs_type : string option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  partition : float option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  pd_name : string;
      (** Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  read_only : bool option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
}
[@@deriving yojson_of]
(** Represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)

type kubernetes_persistent_volume__spec__persistent_volume_source__glusterfs = {
  endpoints_name : string;
      (** The endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  path : string;
      (** The Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  read_only : bool option; [@option]
      (** Whether to force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
}
[@@deriving yojson_of]
(** Represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md *)

type kubernetes_persistent_volume__spec__persistent_volume_source__host_path = {
  path : string option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)
  type_ : string option; [@option] [@key "type"]
      (** Type for HostPath volume. Allowed values are  (default), DirectoryOrCreate, Directory, FileOrCreate, File, Socket, CharDevice and BlockDevice *)
}
[@@deriving yojson_of]
(** Represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)

type kubernetes_persistent_volume__spec__persistent_volume_source__iscsi = {
  fs_type : string option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi *)
  iqn : string;  (** Target iSCSI Qualified Name. *)
  iscsi_interface : string option; [@option]
      (** iSCSI interface name that uses an iSCSI transport. Defaults to 'default' (tcp). *)
  lun : float option; [@option]  (** iSCSI target lun number. *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. *)
  target_portal : string;
      (** iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). *)
}
[@@deriving yojson_of]
(** Represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. *)

type kubernetes_persistent_volume__spec__persistent_volume_source__local = {
  path : string option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)
}
[@@deriving yojson_of]
(** Represents a mounted local storage device such as a disk, partition or directory. Local volumes can only be used as a statically created PersistentVolume. Dynamic provisioning is not supported yet. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)

type kubernetes_persistent_volume__spec__persistent_volume_source__nfs = {
  path : string;
      (** Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  read_only : bool option; [@option]
      (** Whether to force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  server : string;
      (** Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
}
[@@deriving yojson_of]
(** Represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)

type kubernetes_persistent_volume__spec__persistent_volume_source__photon_persistent_disk = {
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  pd_id : string;
      (** ID that identifies Photon Controller persistent disk *)
}
[@@deriving yojson_of]
(** Represents a PhotonController persistent disk attached and mounted on kubelets host machine *)

type kubernetes_persistent_volume__spec__persistent_volume_source__quobyte = {
  group : string option; [@option]
      (** Group to map volume access to Default is no group *)
  read_only : bool option; [@option]
      (** Whether to force the Quobyte volume to be mounted with read-only permissions. Defaults to false. *)
  registry : string;
      (** Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes *)
  user : string option; [@option]
      (** User to map volume access to Defaults to serivceaccount user *)
  volume : string;
      (** Volume is a string that references an already created Quobyte volume by name. *)
}
[@@deriving yojson_of]
(** Quobyte represents a Quobyte mount on the host that shares a pod's lifetime *)

type kubernetes_persistent_volume__spec__persistent_volume_source__rbd__secret_ref = {
  name : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)

type kubernetes_persistent_volume__spec__persistent_volume_source__rbd = {
  ceph_monitors : string list;
      (** A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  fs_type : string option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd *)
  keyring : string option; [@option]
      (** Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rados_user : string option; [@option]
      (** The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_image : string;
      (** The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_pool : string option; [@option]
      (** The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it. *)
  read_only : bool option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  secret_ref :
    kubernetes_persistent_volume__spec__persistent_volume_source__rbd__secret_ref
    list;
}
[@@deriving yojson_of]
(** Represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md *)

type kubernetes_persistent_volume__spec__persistent_volume_source__vsphere_volume = {
  fs_type : string option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  volume_path : string;
      (** Path that identifies vSphere volume vmdk *)
}
[@@deriving yojson_of]
(** Represents a vSphere volume attached and mounted on kubelets host machine *)

type kubernetes_persistent_volume__spec__persistent_volume_source = {
  aws_elastic_block_store :
    kubernetes_persistent_volume__spec__persistent_volume_source__aws_elastic_block_store
    list;
  azure_disk :
    kubernetes_persistent_volume__spec__persistent_volume_source__azure_disk
    list;
  azure_file :
    kubernetes_persistent_volume__spec__persistent_volume_source__azure_file
    list;
  ceph_fs :
    kubernetes_persistent_volume__spec__persistent_volume_source__ceph_fs
    list;
  cinder :
    kubernetes_persistent_volume__spec__persistent_volume_source__cinder
    list;
  csi :
    kubernetes_persistent_volume__spec__persistent_volume_source__csi
    list;
  fc :
    kubernetes_persistent_volume__spec__persistent_volume_source__fc
    list;
  flex_volume :
    kubernetes_persistent_volume__spec__persistent_volume_source__flex_volume
    list;
  flocker :
    kubernetes_persistent_volume__spec__persistent_volume_source__flocker
    list;
  gce_persistent_disk :
    kubernetes_persistent_volume__spec__persistent_volume_source__gce_persistent_disk
    list;
  glusterfs :
    kubernetes_persistent_volume__spec__persistent_volume_source__glusterfs
    list;
  host_path :
    kubernetes_persistent_volume__spec__persistent_volume_source__host_path
    list;
  iscsi :
    kubernetes_persistent_volume__spec__persistent_volume_source__iscsi
    list;
  local :
    kubernetes_persistent_volume__spec__persistent_volume_source__local
    list;
  nfs :
    kubernetes_persistent_volume__spec__persistent_volume_source__nfs
    list;
  photon_persistent_disk :
    kubernetes_persistent_volume__spec__persistent_volume_source__photon_persistent_disk
    list;
  quobyte :
    kubernetes_persistent_volume__spec__persistent_volume_source__quobyte
    list;
  rbd :
    kubernetes_persistent_volume__spec__persistent_volume_source__rbd
    list;
  vsphere_volume :
    kubernetes_persistent_volume__spec__persistent_volume_source__vsphere_volume
    list;
}
[@@deriving yojson_of]
(** The specification of a persistent volume. *)

type kubernetes_persistent_volume__spec = {
  access_modes : string list;
      (** Contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes *)
  capacity : (string * string) list;
      (** A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity *)
  mount_options : string list option; [@option]
      (** A list of mount options, e.g. [ro, soft]. Not validated - mount will simply fail if one is invalid. *)
  persistent_volume_reclaim_policy : string option; [@option]
      (** What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming *)
  storage_class_name : string option; [@option]
      (** A description of the persistent volume's class. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#class *)
  volume_mode : string option; [@option]
      (** Defines if a volume is intended to be used with a formatted filesystem. or to remain in raw block state. *)
  claim_ref : kubernetes_persistent_volume__spec__claim_ref list;
  node_affinity :
    kubernetes_persistent_volume__spec__node_affinity list;
  persistent_volume_source :
    kubernetes_persistent_volume__spec__persistent_volume_source list;
}
[@@deriving yojson_of]
(** Spec of the persistent volume owned by the cluster *)

type kubernetes_persistent_volume__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume__timeouts *)

type kubernetes_persistent_volume = {
  metadata : kubernetes_persistent_volume__metadata list;
  spec : kubernetes_persistent_volume__spec list;
  timeouts : kubernetes_persistent_volume__timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume *)

let kubernetes_persistent_volume ?timeouts ~metadata ~spec
    __resource_id =
  let __resource_type = "kubernetes_persistent_volume" in
  let __resource = { metadata; spec; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_persistent_volume __resource);
  ()
