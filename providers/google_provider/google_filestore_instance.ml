(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_filestore_instance__file_shares__nfs_export_options = {
  access_mode : string option; [@option]
      (** Either READ_ONLY, for allowing only read requests on the exported directory,
or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value: READ_WRITE Possible values: [READ_ONLY, READ_WRITE] *)
  anon_gid : float option; [@option]
      (** An integer representing the anonymous group id with a default value of 65534.
Anon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. *)
  anon_uid : float option; [@option]
      (** An integer representing the anonymous user id with a default value of 65534.
Anon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. *)
  ip_ranges : string list option; [@option]
      (** List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.
The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions. *)
  squash_mode : string option; [@option]
      (** Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
for not allowing root access. The default is NO_ROOT_SQUASH. Default value: NO_ROOT_SQUASH Possible values: [NO_ROOT_SQUASH, ROOT_SQUASH] *)
}
[@@deriving yojson_of]
(** Nfs Export Options. There is a limit of 10 export options per file share. *)

type google_filestore_instance__file_shares = {
  capacity_gb : float;
      (** File share capacity in GiB. This must be at least 1024 GiB
for the standard tier, or 2560 GiB for the premium tier. *)
  name : string;
      (** The name of the fileshare (16 characters or less) *)
  source_backup : string option; [@option]
      (** The resource name of the backup, in the format
projects/{projectId}/locations/{locationId}/backups/{backupId},
that this file share has been restored from. *)
  nfs_export_options :
    google_filestore_instance__file_shares__nfs_export_options list;
}
[@@deriving yojson_of]
(** File system shares on the instance. For this version, only a
single file share is supported. *)

type google_filestore_instance__networks = {
  connect_mode : string option; [@option]
      (** The network connect mode of the Filestore instance.
If not provided, the connect mode defaults to
DIRECT_PEERING. Default value: DIRECT_PEERING Possible values: [DIRECT_PEERING, PRIVATE_SERVICE_ACCESS] *)
  ip_addresses : string list;
      (** A list of IPv4 or IPv6 addresses. *)
  modes : string list;
      (** IP versions for which the instance has
IP addresses assigned. Possible values: [ADDRESS_MODE_UNSPECIFIED, MODE_IPV4, MODE_IPV6] *)
  network : string;
      (** The name of the GCE VPC network to which the
instance is connected. *)
  reserved_ip_range : string option; [@option]
      (** A /29 CIDR block that identifies the range of IP
addresses reserved for this instance. *)
}
[@@deriving yojson_of]
(** VPC networks to which the instance is connected. For this version,
only a single network is supported. *)

type google_filestore_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_filestore_instance__timeouts *)

type google_filestore_instance = {
  description : string option; [@option]
      (** A description of the instance. *)
  kms_key_name : string option; [@option]
      (** KMS key name used for data encryption. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The resource name of the instance. *)
  tier : string;
      (** The service tier of the instance.
Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE *)
  file_shares : google_filestore_instance__file_shares list;
  networks : google_filestore_instance__networks list;
  timeouts : google_filestore_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_instance *)

let google_filestore_instance ?description ?kms_key_name ?labels
    ?timeouts ~name ~tier ~file_shares ~networks __resource_id =
  let __resource_type = "google_filestore_instance" in
  let __resource =
    {
      description;
      kms_key_name;
      labels;
      name;
      tier;
      file_shares;
      networks;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_filestore_instance __resource);
  ()
