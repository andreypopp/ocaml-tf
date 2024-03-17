(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_image__guest_os_features = {
  type_ : string; [@key "type"]
      (** The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [MULTI_IP_SUBNET, SECURE_BOOT, SEV_CAPABLE, UEFI_COMPATIBLE, VIRTIO_SCSI_MULTIQUEUE, WINDOWS, GVNIC, SEV_LIVE_MIGRATABLE, SEV_SNP_CAPABLE, SUSPEND_RESUME_COMPATIBLE, TDX_CAPABLE, SEV_LIVE_MIGRATABLE_V2] *)
}
[@@deriving yojson_of]
(** A list of features to enable on the guest operating system.
Applicable only for bootable images. *)

type google_compute_image__image_encryption_key = {
  kms_key_self_link : string option; [@option]
      (** The self link of the encryption key that is stored in Google Cloud
KMS. *)
  kms_key_service_account : string option; [@option]
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
  container_type : string option; [@option]
      (** The format used to encode and transmit the block device, which
should be TAR. This is just a container and transmission format
and not a runtime format. Provided by the client when the disk
image is created. Default value: TAR Possible values: [TAR] *)
  sha1 : string option; [@option]
      (** An optional SHA1 checksum of the disk image before unpackaging.
This is provided by the client when the disk image is created. *)
  source : string;
      (** The full Google Cloud Storage URL where disk storage is stored
You must provide either this property or the sourceDisk property
but not both. *)
}
[@@deriving yojson_of]
(** The parameters of the raw disk image. *)

type google_compute_image__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_image__timeouts *)

type google_compute_image = {
  description : string option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  disk_size_gb : float option; [@option]
      (** Size of the image when restored onto a persistent disk (in GB). *)
  family : string option; [@option]
      (** The name of the image family to which this image belongs. You can
create disks by specifying an image family instead of a specific
image name. The image family always returns its latest image that is
not deprecated. The name of the image family must comply with
RFC1035. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Labels to apply to this Image.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  licenses : string list option; [@option]
      (** Any applicable license URI. *)
  name : string;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  project : string option; [@option]  (** project *)
  source_disk : string option; [@option]
      (** The source disk to create this image based on.
You must provide either this property or the
rawDisk.source property but not both to create an image. *)
  source_image : string option; [@option]
      (** URL of the source image used to create this image. In order to create an image, you must provide the full or partial
URL of one of the following:

* The selfLink URL
* This property
* The rawDisk.source URL
* The sourceDisk URL *)
  source_snapshot : string option; [@option]
      (** URL of the source snapshot used to create this image.

In order to create an image, you must provide the full or partial URL of one of the following:

* The selfLink URL
* This property
* The sourceImage URL
* The rawDisk.source URL
* The sourceDisk URL *)
  storage_locations : string list option; [@option]
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

let google_compute_image ?description ?disk_size_gb ?family ?id
    ?labels ?licenses ?project ?source_disk ?source_image
    ?source_snapshot ?storage_locations ?timeouts ~name
    ~guest_os_features ~image_encryption_key ~raw_disk __resource_id
    =
  let __resource_type = "google_compute_image" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_image __resource);
  ()
