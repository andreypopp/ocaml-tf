(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type metadata = {
  annotations : (string * string prop) list option; [@option]
      (** An unstructured key value map stored with the persistent volume that may be used to store arbitrary metadata. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/ *)
  labels : (string * string prop) list option; [@option]
      (** Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ *)
  name : string prop option; [@option]
      (** Name of the persistent volume, must be unique. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Standard persistent volume's metadata. More info: https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata *)

type spec__claim_ref = {
  name : string prop;  (** The name of the PersistentVolumeClaim *)
  namespace : string prop option; [@option]
      (** The namespace of the PersistentVolumeClaim. Uses 'default' namespace if none is specified. *)
}
[@@deriving yojson_of]
(** A reference to the persistent volume claim details for statically managed PVs. More Info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#binding *)

type spec__node_affinity__required__node_selector_term__match_expressions = {
  key : string prop;
      (** The label key that the selector applies to. *)
  operator : string prop;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's labels. The requirements are ANDed. *)

type spec__node_affinity__required__node_selector_term__match_fields = {
  key : string prop;
      (** The label key that the selector applies to. *)
  operator : string prop;
      (** A key's relationship to a set of values. Valid operators ard `In`, `NotIn`, `Exists`, `DoesNotExist`, `Gt`, and `Lt`. *)
  values : string prop list option; [@option]
      (** An array of string values. If the operator is `In` or `NotIn`, the values array must be non-empty. If the operator is `Exists` or `DoesNotExist`, the values array must be empty. This array is replaced during a strategic merge patch. *)
}
[@@deriving yojson_of]
(** A list of node selector requirements by node's fields. The requirements are ANDed. *)

type spec__node_affinity__required__node_selector_term = {
  match_expressions :
    spec__node_affinity__required__node_selector_term__match_expressions
    list;
  match_fields :
    spec__node_affinity__required__node_selector_term__match_fields
    list;
}
[@@deriving yojson_of]
(** spec__node_affinity__required__node_selector_term *)

type spec__node_affinity__required = {
  node_selector_term :
    spec__node_affinity__required__node_selector_term list;
}
[@@deriving yojson_of]
(** spec__node_affinity__required *)

type spec__node_affinity = {
  required : spec__node_affinity__required list;
}
[@@deriving yojson_of]
(** A description of the persistent volume's node affinity. More info: https://kubernetes.io/docs/concepts/storage/volumes/#local *)

type spec__persistent_volume_source__aws_elastic_block_store = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  partition : float prop option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). *)
  read_only : bool prop option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
  volume_id : string prop;
      (** Unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)
}
[@@deriving yojson_of]
(** Represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore *)

type spec__persistent_volume_source__azure_disk = {
  caching_mode : string prop;
      (** Host Caching mode: None, Read Only, Read Write. *)
  data_disk_uri : string prop;
      (** The URI the data disk in the blob storage *)
  disk_name : string prop;
      (** The Name of the data disk in the blob storage *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  kind : string prop option; [@option]
      (** The type for the data disk. Expected values: Shared, Dedicated, Managed. Defaults to Shared *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
}
[@@deriving yojson_of]
(** Represents an Azure Data Disk mount on the host and bind mount to the pod. *)

type spec__persistent_volume_source__azure_file = {
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  secret_name : string prop;
      (** The name of secret that contains Azure Storage Account Name and Key *)
  secret_namespace : string prop option; [@option]
      (** The namespace of the secret that contains Azure Storage Account Name and Key. For Kubernetes up to 1.18.x the default is the same as the Pod. For Kubernetes 1.19.x and later the default is default namespace. *)
  share_name : string prop;  (** Share Name *)
}
[@@deriving yojson_of]
(** Represents an Azure File Service mount on the host and bind mount to the pod. *)

type spec__persistent_volume_source__ceph_fs__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)

type spec__persistent_volume_source__ceph_fs = {
  monitors : string prop list;
      (** Monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  path : string prop option; [@option]
      (** Used as the mounted root, rather than the full Ceph tree, default is / *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to `false` (read/write). More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_file : string prop option; [@option]
      (** The path to key ring for User, default is `/etc/ceph/user.secret`. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  user : string prop option; [@option]
      (** User is the rados user name, default is admin. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it *)
  secret_ref :
    spec__persistent_volume_source__ceph_fs__secret_ref list;
}
[@@deriving yojson_of]
(** Represents a Ceph FS mount on the host that shares a pod's lifetime *)

type spec__persistent_volume_source__cinder = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
  volume_id : string prop;
      (** Volume ID used to identify the volume in Cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)
}
[@@deriving yojson_of]
(** Represents a cinder volume attached and mounted on kubelets host machine. More info: https://examples.k8s.io/mysql-cinder-pd/README.md *)

type spec__persistent_volume_source__csi__controller_expand_secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. *)

type spec__persistent_volume_source__csi__controller_publish_secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. *)

type spec__persistent_volume_source__csi__node_publish_secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. *)

type spec__persistent_volume_source__csi__node_stage_secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** A reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. *)

type spec__persistent_volume_source__csi = {
  driver : string prop;
      (** the name of the volume driver to use. More info: https://kubernetes.io/docs/concepts/storage/volumes/#csi *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  read_only : bool prop option; [@option]
      (** Whether to set the read-only property in VolumeMounts to true. If omitted, the default is false. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)
  volume_attributes : (string * string prop) list option; [@option]
      (** Attributes of the volume to publish. *)
  volume_handle : string prop;
      (** A string value that uniquely identifies the volume. More info: https://kubernetes.io/docs/concepts/storage/volumes/#csi *)
  controller_expand_secret_ref :
    spec__persistent_volume_source__csi__controller_expand_secret_ref
    list;
  controller_publish_secret_ref :
    spec__persistent_volume_source__csi__controller_publish_secret_ref
    list;
  node_publish_secret_ref :
    spec__persistent_volume_source__csi__node_publish_secret_ref list;
  node_stage_secret_ref :
    spec__persistent_volume_source__csi__node_stage_secret_ref list;
}
[@@deriving yojson_of]
(** Represents a CSI Volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#csi *)

type spec__persistent_volume_source__fc = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  lun : float prop;  (** FC target lun number *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false (read/write). *)
  target_ww_ns : string prop list;
      (** FC target worldwide names (WWNs) *)
}
[@@deriving yojson_of]
(** Represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod. *)

type spec__persistent_volume_source__flex_volume__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts. *)

type spec__persistent_volume_source__flex_volume = {
  driver : string prop;
      (** Driver is the name of the driver to use for this volume. *)
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. The default filesystem depends on FlexVolume script. *)
  options : (string * string prop) list option; [@option]
      (** Extra command options if any. *)
  read_only : bool prop option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false (read/write). *)
  secret_ref :
    spec__persistent_volume_source__flex_volume__secret_ref list;
}
[@@deriving yojson_of]
(** Represents a generic volume resource that is provisioned/attached using an exec based plugin. This is an alpha feature and may change in future. *)

type spec__persistent_volume_source__flocker = {
  dataset_name : string prop option; [@option]
      (** Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated *)
  dataset_uuid : string prop option; [@option]
      (** UUID of the dataset. This is unique identifier of a Flocker dataset *)
}
[@@deriving yojson_of]
(** Represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running *)

type spec__persistent_volume_source__gce_persistent_disk = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  partition : float prop option; [@option]
      (** The partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as 1. Similarly, the volume partition for /dev/sda is 0 (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  pd_name : string prop;
      (** Unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
  read_only : bool prop option; [@option]
      (** Whether to force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)
}
[@@deriving yojson_of]
(** Represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk *)

type spec__persistent_volume_source__glusterfs = {
  endpoints_name : string prop;
      (** The endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  path : string prop;
      (** The Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
  read_only : bool prop option; [@option]
      (** Whether to force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod *)
}
[@@deriving yojson_of]
(** Represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: https://examples.k8s.io/volumes/glusterfs/README.md *)

type spec__persistent_volume_source__host_path = {
  path : string prop option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)
  type_ : string prop option; [@option] [@key "type"]
      (** Type for HostPath volume. Allowed values are  (default), DirectoryOrCreate, Directory, FileOrCreate, File, Socket, CharDevice and BlockDevice *)
}
[@@deriving yojson_of]
(** Represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath *)

type spec__persistent_volume_source__iscsi = {
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi *)
  iqn : string prop;  (** Target iSCSI Qualified Name. *)
  iscsi_interface : string prop option; [@option]
      (** iSCSI interface name that uses an iSCSI transport. Defaults to 'default' (tcp). *)
  lun : float prop option; [@option]  (** iSCSI target lun number. *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. *)
  target_portal : string prop;
      (** iSCSI target portal. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). *)
}
[@@deriving yojson_of]
(** Represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. *)

type spec__persistent_volume_source__local = {
  path : string prop option; [@option]
      (** Path of the directory on the host. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)
}
[@@deriving yojson_of]
(** Represents a mounted local storage device such as a disk, partition or directory. Local volumes can only be used as a statically created PersistentVolume. Dynamic provisioning is not supported yet. More info: https://kubernetes.io/docs/concepts/storage/volumes#local *)

type spec__persistent_volume_source__nfs = {
  path : string prop;
      (** Path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  read_only : bool prop option; [@option]
      (** Whether to force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
  server : string prop;
      (** Server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)
}
[@@deriving yojson_of]
(** Represents an NFS mount on the host. Provisioned by an admin. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs *)

type spec__persistent_volume_source__photon_persistent_disk = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  pd_id : string prop;
      (** ID that identifies Photon Controller persistent disk *)
}
[@@deriving yojson_of]
(** Represents a PhotonController persistent disk attached and mounted on kubelets host machine *)

type spec__persistent_volume_source__quobyte = {
  group : string prop option; [@option]
      (** Group to map volume access to Default is no group *)
  read_only : bool prop option; [@option]
      (** Whether to force the Quobyte volume to be mounted with read-only permissions. Defaults to false. *)
  registry : string prop;
      (** Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes *)
  user : string prop option; [@option]
      (** User to map volume access to Defaults to serivceaccount user *)
  volume : string prop;
      (** Volume is a string that references an already created Quobyte volume by name. *)
}
[@@deriving yojson_of]
(** Quobyte represents a Quobyte mount on the host that shares a pod's lifetime *)

type spec__persistent_volume_source__rbd__secret_ref = {
  name : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
  namespace : string prop option; [@option]
      (** Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names *)
}
[@@deriving yojson_of]
(** Name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)

type spec__persistent_volume_source__rbd = {
  ceph_monitors : string prop list;
      (** A collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  fs_type : string prop option; [@option]
      (** Filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd *)
  keyring : string prop option; [@option]
      (** Keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rados_user : string prop option; [@option]
      (** The rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_image : string prop;
      (** The rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  rbd_pool : string prop option; [@option]
      (** The rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it. *)
  read_only : bool prop option; [@option]
      (** Whether to force the read-only setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it *)
  secret_ref : spec__persistent_volume_source__rbd__secret_ref list;
}
[@@deriving yojson_of]
(** Represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: https://examples.k8s.io/volumes/rbd/README.md *)

type spec__persistent_volume_source__vsphere_volume = {
  fs_type : string prop option; [@option]
      (** Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. ext4, xfs, ntfs. Implicitly inferred to be ext4 if unspecified. *)
  volume_path : string prop;
      (** Path that identifies vSphere volume vmdk *)
}
[@@deriving yojson_of]
(** Represents a vSphere volume attached and mounted on kubelets host machine *)

type spec__persistent_volume_source = {
  aws_elastic_block_store :
    spec__persistent_volume_source__aws_elastic_block_store list;
  azure_disk : spec__persistent_volume_source__azure_disk list;
  azure_file : spec__persistent_volume_source__azure_file list;
  ceph_fs : spec__persistent_volume_source__ceph_fs list;
  cinder : spec__persistent_volume_source__cinder list;
  csi : spec__persistent_volume_source__csi list;
  fc : spec__persistent_volume_source__fc list;
  flex_volume : spec__persistent_volume_source__flex_volume list;
  flocker : spec__persistent_volume_source__flocker list;
  gce_persistent_disk :
    spec__persistent_volume_source__gce_persistent_disk list;
  glusterfs : spec__persistent_volume_source__glusterfs list;
  host_path : spec__persistent_volume_source__host_path list;
  iscsi : spec__persistent_volume_source__iscsi list;
  local : spec__persistent_volume_source__local list;
  nfs : spec__persistent_volume_source__nfs list;
  photon_persistent_disk :
    spec__persistent_volume_source__photon_persistent_disk list;
  quobyte : spec__persistent_volume_source__quobyte list;
  rbd : spec__persistent_volume_source__rbd list;
  vsphere_volume :
    spec__persistent_volume_source__vsphere_volume list;
}
[@@deriving yojson_of]
(** The specification of a persistent volume. *)

type spec = {
  access_modes : string prop list;
      (** Contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes *)
  capacity : (string * string prop) list;
      (** A description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity *)
  mount_options : string prop list option; [@option]
      (** A list of mount options, e.g. [ro, soft]. Not validated - mount will simply fail if one is invalid. *)
  persistent_volume_reclaim_policy : string prop option; [@option]
      (** What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming *)
  storage_class_name : string prop option; [@option]
      (** A description of the persistent volume's class. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#class *)
  volume_mode : string prop option; [@option]
      (** Defines if a volume is intended to be used with a formatted filesystem. or to remain in raw block state. *)
  claim_ref : spec__claim_ref list;
  node_affinity : spec__node_affinity list;
  persistent_volume_source : spec__persistent_volume_source list;
}
[@@deriving yojson_of]
(** Spec of the persistent volume owned by the cluster *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type kubernetes_persistent_volume_v1 = {
  id : string prop option; [@option]  (** id *)
  metadata : metadata list;
  spec : spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** kubernetes_persistent_volume_v1 *)

let metadata ?annotations ?labels ?name () : metadata =
  { annotations; labels; name }

let spec__claim_ref ?namespace ~name () : spec__claim_ref =
  { name; namespace }

let spec__node_affinity__required__node_selector_term__match_expressions
    ?values ~key ~operator () :
    spec__node_affinity__required__node_selector_term__match_expressions
    =
  { key; operator; values }

let spec__node_affinity__required__node_selector_term__match_fields
    ?values ~key ~operator () :
    spec__node_affinity__required__node_selector_term__match_fields =
  { key; operator; values }

let spec__node_affinity__required__node_selector_term
    ~match_expressions ~match_fields () :
    spec__node_affinity__required__node_selector_term =
  { match_expressions; match_fields }

let spec__node_affinity__required ~node_selector_term () :
    spec__node_affinity__required =
  { node_selector_term }

let spec__node_affinity ~required () : spec__node_affinity =
  { required }

let spec__persistent_volume_source__aws_elastic_block_store ?fs_type
    ?partition ?read_only ~volume_id () :
    spec__persistent_volume_source__aws_elastic_block_store =
  { fs_type; partition; read_only; volume_id }

let spec__persistent_volume_source__azure_disk ?fs_type ?kind
    ?read_only ~caching_mode ~data_disk_uri ~disk_name () :
    spec__persistent_volume_source__azure_disk =
  {
    caching_mode;
    data_disk_uri;
    disk_name;
    fs_type;
    kind;
    read_only;
  }

let spec__persistent_volume_source__azure_file ?read_only
    ?secret_namespace ~secret_name ~share_name () :
    spec__persistent_volume_source__azure_file =
  { read_only; secret_name; secret_namespace; share_name }

let spec__persistent_volume_source__ceph_fs__secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__ceph_fs__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__ceph_fs ?path ?read_only
    ?secret_file ?user ~monitors ~secret_ref () :
    spec__persistent_volume_source__ceph_fs =
  { monitors; path; read_only; secret_file; user; secret_ref }

let spec__persistent_volume_source__cinder ?fs_type ?read_only
    ~volume_id () : spec__persistent_volume_source__cinder =
  { fs_type; read_only; volume_id }

let spec__persistent_volume_source__csi__controller_expand_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__controller_expand_secret_ref
    =
  { name; namespace }

let spec__persistent_volume_source__csi__controller_publish_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__controller_publish_secret_ref
    =
  { name; namespace }

let spec__persistent_volume_source__csi__node_publish_secret_ref
    ?name ?namespace () :
    spec__persistent_volume_source__csi__node_publish_secret_ref =
  { name; namespace }

let spec__persistent_volume_source__csi__node_stage_secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__csi__node_stage_secret_ref =
  { name; namespace }

let spec__persistent_volume_source__csi ?fs_type ?read_only
    ?volume_attributes ~driver ~volume_handle
    ~controller_expand_secret_ref ~controller_publish_secret_ref
    ~node_publish_secret_ref ~node_stage_secret_ref () :
    spec__persistent_volume_source__csi =
  {
    driver;
    fs_type;
    read_only;
    volume_attributes;
    volume_handle;
    controller_expand_secret_ref;
    controller_publish_secret_ref;
    node_publish_secret_ref;
    node_stage_secret_ref;
  }

let spec__persistent_volume_source__fc ?fs_type ?read_only ~lun
    ~target_ww_ns () : spec__persistent_volume_source__fc =
  { fs_type; lun; read_only; target_ww_ns }

let spec__persistent_volume_source__flex_volume__secret_ref ?name
    ?namespace () :
    spec__persistent_volume_source__flex_volume__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__flex_volume ?fs_type ?options
    ?read_only ~driver ~secret_ref () :
    spec__persistent_volume_source__flex_volume =
  { driver; fs_type; options; read_only; secret_ref }

let spec__persistent_volume_source__flocker ?dataset_name
    ?dataset_uuid () : spec__persistent_volume_source__flocker =
  { dataset_name; dataset_uuid }

let spec__persistent_volume_source__gce_persistent_disk ?fs_type
    ?partition ?read_only ~pd_name () :
    spec__persistent_volume_source__gce_persistent_disk =
  { fs_type; partition; pd_name; read_only }

let spec__persistent_volume_source__glusterfs ?read_only
    ~endpoints_name ~path () :
    spec__persistent_volume_source__glusterfs =
  { endpoints_name; path; read_only }

let spec__persistent_volume_source__host_path ?path ?type_ () :
    spec__persistent_volume_source__host_path =
  { path; type_ }

let spec__persistent_volume_source__iscsi ?fs_type ?iscsi_interface
    ?lun ?read_only ~iqn ~target_portal () :
    spec__persistent_volume_source__iscsi =
  { fs_type; iqn; iscsi_interface; lun; read_only; target_portal }

let spec__persistent_volume_source__local ?path () :
    spec__persistent_volume_source__local =
  { path }

let spec__persistent_volume_source__nfs ?read_only ~path ~server () :
    spec__persistent_volume_source__nfs =
  { path; read_only; server }

let spec__persistent_volume_source__photon_persistent_disk ?fs_type
    ~pd_id () :
    spec__persistent_volume_source__photon_persistent_disk =
  { fs_type; pd_id }

let spec__persistent_volume_source__quobyte ?group ?read_only ?user
    ~registry ~volume () : spec__persistent_volume_source__quobyte =
  { group; read_only; registry; user; volume }

let spec__persistent_volume_source__rbd__secret_ref ?name ?namespace
    () : spec__persistent_volume_source__rbd__secret_ref =
  { name; namespace }

let spec__persistent_volume_source__rbd ?fs_type ?keyring ?rados_user
    ?rbd_pool ?read_only ~ceph_monitors ~rbd_image ~secret_ref () :
    spec__persistent_volume_source__rbd =
  {
    ceph_monitors;
    fs_type;
    keyring;
    rados_user;
    rbd_image;
    rbd_pool;
    read_only;
    secret_ref;
  }

let spec__persistent_volume_source__vsphere_volume ?fs_type
    ~volume_path () : spec__persistent_volume_source__vsphere_volume
    =
  { fs_type; volume_path }

let spec__persistent_volume_source ~aws_elastic_block_store
    ~azure_disk ~azure_file ~ceph_fs ~cinder ~csi ~fc ~flex_volume
    ~flocker ~gce_persistent_disk ~glusterfs ~host_path ~iscsi ~local
    ~nfs ~photon_persistent_disk ~quobyte ~rbd ~vsphere_volume () :
    spec__persistent_volume_source =
  {
    aws_elastic_block_store;
    azure_disk;
    azure_file;
    ceph_fs;
    cinder;
    csi;
    fc;
    flex_volume;
    flocker;
    gce_persistent_disk;
    glusterfs;
    host_path;
    iscsi;
    local;
    nfs;
    photon_persistent_disk;
    quobyte;
    rbd;
    vsphere_volume;
  }

let spec ?mount_options ?persistent_volume_reclaim_policy
    ?storage_class_name ?volume_mode ~access_modes ~capacity
    ~claim_ref ~node_affinity ~persistent_volume_source () : spec =
  {
    access_modes;
    capacity;
    mount_options;
    persistent_volume_reclaim_policy;
    storage_class_name;
    volume_mode;
    claim_ref;
    node_affinity;
    persistent_volume_source;
  }

let timeouts ?create () : timeouts = { create }

let kubernetes_persistent_volume_v1 ?id ?timeouts ~metadata ~spec ()
    : kubernetes_persistent_volume_v1 =
  { id; metadata; spec; timeouts }

type t = { id : string prop }

let register ?tf_module ?id ?timeouts ~metadata ~spec __resource_id =
  let __resource_type = "kubernetes_persistent_volume_v1" in
  let __resource =
    kubernetes_persistent_volume_v1 ?id ?timeouts ~metadata ~spec ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_kubernetes_persistent_volume_v1 __resource);
  let __resource_attributes =
    ({ id = Prop.computed __resource_type __resource_id "id" } : t)
  in
  __resource_attributes
