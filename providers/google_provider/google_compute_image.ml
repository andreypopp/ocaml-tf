(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_image__guest_os_features = {
  type_ : string prop; [@key "type"]
      (** The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE, SEV_LIVE_MIGRATABLE_V2] *)
}
[@@deriving yojson_of]
(** A list of features to enable on the guest operating system.
Applicable only for bootable images. *)

type google_compute_image__image_encryption_key = {
  kms_key_self_link : string prop option; [@option]
      (** The self link of the encryption key that is stored in Google Cloud
KMS. *)
  kms_key_service_account : string prop option; [@option]
      (** The service account being used for the encryption request for the
given KMS key. If absent, the Compute Engine default service
account is used. *)
}
[@@deriving yojson_of]
(** Encrypts the image using a customer-supplied encryption key.

After you encrypt an image with a customer-supplied key, you must
provide the same key if you use the image later (e.g. to create a
disk from the image) *)

type google_compute_image__raw_disk = {
  container_type : string prop option; [@option]
      (** The format used to encode and transmit the block device, which
should be TAR. This is just a container and transmission format
and not a runtime format. Provided by the client when the disk
image is created. Default value: TAR Possible values: [TAR] *)
  sha1 : string prop option; [@option]
      (** An optional SHA1 checksum of the disk image before unpackaging.
This is provided by the client when the disk image is created. *)
  source : string prop;
      (** The full Google Cloud Storage URL where disk storage is stored
You must provide either this property or the sourceDisk property
but not both. *)
}
[@@deriving yojson_of]
(** The parameters of the raw disk image. *)

type google_compute_image__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_image__timeouts *)

type google_compute_image = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  disk_size_gb : float prop option; [@option]
      (** Size of the image when restored onto a persistent disk (in GB). *)
  family : string prop option; [@option]
      (** The name of the image family to which this image belongs. You can
create disks by specifying an image family instead of a specific
image name. The image family always returns its latest image that is
not deprecated. The name of the image family must comply with
RFC1035. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this Image.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  licenses : string prop list option; [@option]
      (** Any applicable license URI. *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  source_disk : string prop option; [@option]
      (** The source disk to create this image based on.
You must provide either this property or the
rawDisk.source property but not both to create an image. *)
  source_image : string prop option; [@option]
      (** URL of the source image used to create this image. In order to create an image, you must provide the full or partial
URL of one of the following:

* The selfLink URL
* This property
* The rawDisk.source URL
* The sourceDisk URL *)
  source_snapshot : string prop option; [@option]
      (** URL of the source snapshot used to create this image.

In order to create an image, you must provide the full or partial URL of one of the following:

* The selfLink URL
* This property
* The sourceImage URL
* The rawDisk.source URL
* The sourceDisk URL *)
  storage_locations : string prop list option; [@option]
      (** Cloud Storage bucket storage location of the image
(regional or multi-regional).
Reference link: https://cloud.google.com/compute/docs/reference/rest/v1/images *)
  guest_os_features : google_compute_image__guest_os_features list;
  image_encryption_key :
    google_compute_image__image_encryption_key list;
  raw_disk : google_compute_image__raw_disk list;
  timeouts : google_compute_image__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_image *)

type t = {
  archive_size_bytes : float prop;
  creation_timestamp : string prop;
  description : string prop;
  disk_size_gb : float prop;
  effective_labels : (string * string) list prop;
  family : string prop;
  id : string prop;
  label_fingerprint : string prop;
  labels : (string * string) list prop;
  licenses : string list prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  source_disk : string prop;
  source_image : string prop;
  source_snapshot : string prop;
  storage_locations : string list prop;
  terraform_labels : (string * string) list prop;
}

let google_compute_image ?description ?disk_size_gb ?family ?id
    ?labels ?licenses ?project ?source_disk ?source_image
    ?source_snapshot ?storage_locations ?timeouts ~name
    ~guest_os_features ~image_encryption_key ~raw_disk __resource_id
    =
  let __resource_type = "google_compute_image" in
  let __resource =
    ({
       description;
       disk_size_gb;
       family;
       id;
       labels;
       licenses;
       name;
       project;
       source_disk;
       source_image;
       source_snapshot;
       storage_locations;
       guest_os_features;
       image_encryption_key;
       raw_disk;
       timeouts;
     }
      : google_compute_image)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_image __resource);
  let __resource_attributes =
    ({
       archive_size_bytes =
         Prop.computed __resource_type __resource_id
           "archive_size_bytes";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       disk_size_gb =
         Prop.computed __resource_type __resource_id "disk_size_gb";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       family = Prop.computed __resource_type __resource_id "family";
       id = Prop.computed __resource_type __resource_id "id";
       label_fingerprint =
         Prop.computed __resource_type __resource_id
           "label_fingerprint";
       labels = Prop.computed __resource_type __resource_id "labels";
       licenses =
         Prop.computed __resource_type __resource_id "licenses";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       source_disk =
         Prop.computed __resource_type __resource_id "source_disk";
       source_image =
         Prop.computed __resource_type __resource_id "source_image";
       source_snapshot =
         Prop.computed __resource_type __resource_id
           "source_snapshot";
       storage_locations =
         Prop.computed __resource_type __resource_id
           "storage_locations";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
