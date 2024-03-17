(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_disk__async_primary_disk = {
  disk : string prop;
      (** Primary disk for asynchronous disk replication. *)
}
[@@deriving yojson_of]
(** A nested object resource *)

type google_compute_disk__disk_encryption_key = {
  kms_key_self_link : string prop option; [@option]
      (** The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project's Compute Engine System service account
('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com') must have
'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys *)
  kms_key_service_account : string prop option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
  rsa_encrypted_key : string prop option; [@option]
      (** Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
customer-supplied encryption key to either encrypt or decrypt
this resource. You can provide either the rawKey or the rsaEncryptedKey. *)
  sha256 : string prop;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
encryption key that protects this resource. *)
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

type google_compute_disk__guest_os_features = {
  type_ : string prop; [@key "type"]
      (** The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE] *)
}
[@@deriving yojson_of]
(** A list of features to enable on the guest operating system.
Applicable only for bootable disks. *)

type google_compute_disk__source_image_encryption_key = {
  kms_key_self_link : string prop option; [@option]
      (** The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project's Compute Engine System service account
('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com') must have
'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys *)
  kms_key_service_account : string prop option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
  sha256 : string prop;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
encryption key that protects this resource. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source image. Required if
the source image is protected by a customer-supplied encryption key. *)

type google_compute_disk__source_snapshot_encryption_key = {
  kms_key_self_link : string prop option; [@option]
      (** The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project's Compute Engine System service account
('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com') must have
'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys *)
  kms_key_service_account : string prop option; [@option]
      (** The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. *)
  raw_key : string prop option; [@option]
      (** Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. *)
  sha256 : string prop;
      (** The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
encryption key that protects this resource. *)
}
[@@deriving yojson_of]
(** The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. *)

type google_compute_disk__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_disk__timeouts *)

type google_compute_disk = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  enable_confidential_compute : bool prop option; [@option]
      (** Whether this disk is using confidential compute mode.
Note: Only supported on hyperdisk skus, disk_encryption_key is required when setting to true *)
  id : string prop option; [@option]  (** id *)
  image : string prop option; [@option]
      (** The image from which to initialize this disk. This can be
one of: the image's 'self_link', 'projects/{project}/global/images/{image}',
'projects/{project}/global/images/family/{family}', 'global/images/{image}',
'global/images/family/{family}', 'family/{family}', '{project}/{family}',
'{project}/{image}', '{family}', or '{image}'. If referred by family, the
images names must include the family name. If they don't, use the
[google_compute_image data source](/docs/providers/google/d/compute_image.html).
For instance, the image 'centos-6-v20180104' includes its family name 'centos-6'.
These images can be referred by family name here. *)
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
  provisioned_iops : float prop option; [@option]
      (** Indicates how many IOPS must be provisioned for the disk.
Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
allows for an update of IOPS every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it *)
  provisioned_throughput : float prop option; [@option]
      (** Indicates how much Throughput must be provisioned for the disk.
Note: Updating currently is only supported by hyperdisk skus without the need to delete and recreate the disk, hyperdisk
allows for an update of Throughput every 4 hours. To update your hyperdisk more frequently, you'll need to manually delete and recreate it *)
  size : float prop option; [@option]
      (** Size of the persistent disk, specified in GB. You can specify this
field when creating a persistent disk using the 'image' or
'snapshot' parameter, or specify it alone to create an empty
persistent disk.

If you specify this field along with 'image' or 'snapshot',
the value must not be less than the size of the image
or the size of the snapshot.

~>**NOTE** If you change the size, Terraform updates the disk size
if upsizing is detected but recreates the disk if downsizing is requested.
You can add 'lifecycle.prevent_destroy' in the config to prevent destroying
and recreating. *)
  snapshot : string prop option; [@option]
      (** The source snapshot used to create this disk. You can provide this as
a partial or full URL to the resource. If the snapshot is in another
project than this disk, you must supply a full URL. For example, the
following are valid values:

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
  zone : string prop option; [@option]
      (** A reference to the zone where the disk resides. *)
  async_primary_disk : google_compute_disk__async_primary_disk list;
  disk_encryption_key :
    google_compute_disk__disk_encryption_key list;
  guest_os_features : google_compute_disk__guest_os_features list;
  source_image_encryption_key :
    google_compute_disk__source_image_encryption_key list;
  source_snapshot_encryption_key :
    google_compute_disk__source_snapshot_encryption_key list;
  timeouts : google_compute_disk__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_disk *)

type t = {
  creation_timestamp : string prop;
  description : string prop;
  disk_id : string prop;
  effective_labels : (string * string) list prop;
  enable_confidential_compute : bool prop;
  id : string prop;
  image : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  last_attach_timestamp : string prop;
  last_detach_timestamp : string prop;
  licenses : string list prop;
  name : string prop;
  physical_block_size_bytes : float prop;
  project : string prop;
  provisioned_iops : float prop;
  provisioned_throughput : float prop;
  self_link : string prop;
  size : float prop;
  snapshot : string prop;
  source_disk : string prop;
  source_disk_id : string prop;
  source_image_id : string prop;
  source_snapshot_id : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  users : string list prop;
  zone : string prop;
}

let google_compute_disk ?description ?enable_confidential_compute ?id
    ?image ?labels ?licenses ?physical_block_size_bytes ?project
    ?provisioned_iops ?provisioned_throughput ?size ?snapshot
    ?source_disk ?type_ ?zone ?timeouts ~name ~async_primary_disk
    ~disk_encryption_key ~guest_os_features
    ~source_image_encryption_key ~source_snapshot_encryption_key
    __resource_id =
  let __resource_type = "google_compute_disk" in
  let __resource =
    ({
       description;
       enable_confidential_compute;
       id;
       image;
       labels;
       licenses;
       name;
       physical_block_size_bytes;
       project;
       provisioned_iops;
       provisioned_throughput;
       size;
       snapshot;
       source_disk;
       type_;
       zone;
       async_primary_disk;
       disk_encryption_key;
       guest_os_features;
       source_image_encryption_key;
       source_snapshot_encryption_key;
       timeouts;
     }
      : google_compute_disk)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_disk __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       disk_id =
         Prop.computed __resource_type __resource_id "disk_id";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       enable_confidential_compute =
         Prop.computed __resource_type __resource_id
           "enable_confidential_compute";
       id = Prop.computed __resource_type __resource_id "id";
       image = Prop.computed __resource_type __resource_id "image";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       labels = Prop.computed __resource_type __resource_id "labels";
       last_attach_timestamp =
         Prop.computed __resource_type __resource_id
           "last_attach_timestamp";
       last_detach_timestamp =
         Prop.computed __resource_type __resource_id
           "last_detach_timestamp";
       licenses =
         Prop.computed __resource_type __resource_id "licenses";
       name = Prop.computed __resource_type __resource_id "name";
       physical_block_size_bytes =
         Prop.computed __resource_type __resource_id
           "physical_block_size_bytes";
       project =
         Prop.computed __resource_type __resource_id "project";
       provisioned_iops =
         Prop.computed __resource_type __resource_id
           "provisioned_iops";
       provisioned_throughput =
         Prop.computed __resource_type __resource_id
           "provisioned_throughput";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       size = Prop.computed __resource_type __resource_id "size";
       snapshot =
         Prop.computed __resource_type __resource_id "snapshot";
       source_disk =
         Prop.computed __resource_type __resource_id "source_disk";
       source_disk_id =
         Prop.computed __resource_type __resource_id "source_disk_id";
       source_image_id =
         Prop.computed __resource_type __resource_id
           "source_image_id";
       source_snapshot_id =
         Prop.computed __resource_type __resource_id
           "source_snapshot_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
       users = Prop.computed __resource_type __resource_id "users";
       zone = Prop.computed __resource_type __resource_id "zone";
     }
      : t)
  in
  __resource_attributes
