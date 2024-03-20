(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type async_primary_disk = {
  disk : string prop;
      (** Primary disk for asynchronous disk replication. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type disk_encryption_key = {
  kms_key_name : string prop option; [@option]
      (** The name of the encryption key that is stored in Google Cloud KMS. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
}
[@@deriving yojson_of]
(** Encrypts the disk using a customer-supplied encryption key.

After you encrypt a disk with a customer-supplied key, you must
provide the same key if you use the disk later (e.g. to create a disk
snapshot or an image, or to attach the disk to a virtual machine).

Customer-supplied encryption keys do not protect access to metadata of
the disk.

If you do not provide an encryption key when creating the disk, then
the disk will be encrypted using an automatically generated key and
you do not need to provide a key to use the disk later. *)

type guest_os_features = {
  type_ : string prop; [@key "type"]
      (** The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE] *)
}
[@@deriving yojson_of]
(** A list of features to enable on the guest operating system.
Applicable only for bootable disks. *)

type source_snapshot_encryption_key = {
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_disk = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this disk.  A list of key->value pairs.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  licenses : string prop list option; [@option]
      (** Any applicable license URI. *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  physical_block_size_bytes : float prop option; [@option]
      (** Physical block size of the persistent disk, in bytes. If not present
in a request, a default value is used. Currently supported sizes
are 4096 and 16384, other sizes may be added in the future.
If an unsupported value is requested, the error message will list
the supported values for the caller's project. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** A reference to the region where the disk resides. *)
  replica_zones : string prop list;
      (** URLs of the zones where the disk should be replicated to. *)
  size : float prop option; [@option]
      (** Size of the persistent disk, specified in GB. You can specify this
field when creating a persistent disk using the sourceImage or
sourceSnapshot parameter, or specify it alone to create an empty
persistent disk.

If you specify this field along with sourceImage or sourceSnapshot,
the value of sizeGb must not be less than the size of the sourceImage
or the size of the snapshot. *)
  snapshot : string prop option; [@option]
      (** The source snapshot used to create this disk. You can provide this as
a partial or full URL to the resource. For example, the following are
valid values:

* 'https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot'
* 'projects/project/global/snapshots/snapshot'
* 'global/snapshots/snapshot'
* 'snapshot' *)
  source_disk : string prop option; [@option]
      (** The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
For example, the following are valid values:

* https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
* https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
* projects/{project}/zones/{zone}/disks/{disk}
* projects/{project}/regions/{region}/disks/{disk}
* zones/{zone}/disks/{disk}
* regions/{region}/disks/{disk} *)
  type_ : string prop option; [@option] [@key "type"]
      (** URL of the disk type resource describing which disk type to use to
create the disk. Provide this when creating the disk. *)
  async_primary_disk : async_primary_disk list;
  disk_encryption_key : disk_encryption_key list;
  guest_os_features : guest_os_features list;
  source_snapshot_encryption_key :
    source_snapshot_encryption_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_disk *)

let async_primary_disk ~disk () : async_primary_disk = { disk }

let disk_encryption_key ?kms_key_name ?raw_key () :
    disk_encryption_key =
  { kms_key_name; raw_key }

let guest_os_features ~type_ () : guest_os_features = { type_ }

let source_snapshot_encryption_key ?raw_key () :
    source_snapshot_encryption_key =
  { raw_key }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_disk ?description ?id ?labels ?licenses
    ?physical_block_size_bytes ?project ?region ?size ?snapshot
    ?source_disk ?type_ ?timeouts ~name ~replica_zones
    ~async_primary_disk ~disk_encryption_key ~guest_os_features
    ~source_snapshot_encryption_key () : google_compute_region_disk =
  {
    description;
    id;
    labels;
    licenses;
    name;
    physical_block_size_bytes;
    project;
    region;
    replica_zones;
    size;
    snapshot;
    source_disk;
    type_;
    async_primary_disk;
    disk_encryption_key;
    guest_os_features;
    source_snapshot_encryption_key;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  region : string prop;
  replica_zones : string list prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
}

let make ?description ?id ?labels ?licenses
    ?physical_block_size_bytes ?project ?region ?size ?snapshot
    ?source_disk ?type_ ?timeouts ~name ~replica_zones
    ~async_primary_disk ~disk_encryption_key ~guest_os_features
    ~source_snapshot_encryption_key __id =
  let __type = "google_compute_region_disk" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       last_attach_timestamp =
         Prop.computed __type __id "last_attach_timestamp";
       last_detach_timestamp =
         Prop.computed __type __id "last_detach_timestamp";
       licenses = Prop.computed __type __id "licenses";
       name = Prop.computed __type __id "name";
       physical_block_size_bytes =
         Prop.computed __type __id "physical_block_size_bytes";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       replica_zones = Prop.computed __type __id "replica_zones";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       snapshot = Prop.computed __type __id "snapshot";
       source_disk = Prop.computed __type __id "source_disk";
       source_disk_id = Prop.computed __type __id "source_disk_id";
       source_snapshot_id =
         Prop.computed __type __id "source_snapshot_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_disk
        (google_compute_region_disk ?description ?id ?labels
           ?licenses ?physical_block_size_bytes ?project ?region
           ?size ?snapshot ?source_disk ?type_ ?timeouts ~name
           ~replica_zones ~async_primary_disk ~disk_encryption_key
           ~guest_os_features ~source_snapshot_encryption_key ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?licenses
    ?physical_block_size_bytes ?project ?region ?size ?snapshot
    ?source_disk ?type_ ?timeouts ~name ~replica_zones
    ~async_primary_disk ~disk_encryption_key ~guest_os_features
    ~source_snapshot_encryption_key __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?licenses
      ?physical_block_size_bytes ?project ?region ?size ?snapshot
      ?source_disk ?type_ ?timeouts ~name ~replica_zones
      ~async_primary_disk ~disk_encryption_key ~guest_os_features
      ~source_snapshot_encryption_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
