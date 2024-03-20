(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type file_shares__nfs_export_options = {
  access_mode : string prop option; [@option]
      (** Either READ_ONLY, for allowing only read requests on the exported directory,
or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value: READ_WRITE Possible values: [READ_ONLY, READ_WRITE] *)
  anon_gid : float prop option; [@option]
      (** An integer representing the anonymous group id with a default value of 65534.
Anon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. *)
  anon_uid : float prop option; [@option]
      (** An integer representing the anonymous user id with a default value of 65534.
Anon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. *)
  ip_ranges : string prop list option; [@option]
      (** List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.
The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions. *)
  squash_mode : string prop option; [@option]
      (** Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
for not allowing root access. The default is NO_ROOT_SQUASH. Default value: NO_ROOT_SQUASH Possible values: [NO_ROOT_SQUASH, ROOT_SQUASH] *)
}
[@@deriving yojson_of]
(** Nfs Export Options. There is a limit of 10 export options per file share. *)

type file_shares = {
  capacity_gb : float prop;
      (** File share capacity in GiB. This must be at least 1024 GiB
for the standard tier, or 2560 GiB for the premium tier. *)
  name : string prop;
      (** The name of the fileshare (16 characters or less) *)
  source_backup : string prop option; [@option]
      (** The resource name of the backup, in the format
projects/{projectId}/locations/{locationId}/backups/{backupId},
that this file share has been restored from. *)
  nfs_export_options : file_shares__nfs_export_options list;
}
[@@deriving yojson_of]
(** File system shares on the instance. For this version, only a
single file share is supported. *)

type networks = {
  connect_mode : string prop option; [@option]
      (** The network connect mode of the Filestore instance.
If not provided, the connect mode defaults to
DIRECT_PEERING. Default value: DIRECT_PEERING Possible values: [DIRECT_PEERING, PRIVATE_SERVICE_ACCESS] *)
  modes : string prop list;
      (** IP versions for which the instance has
IP addresses assigned. Possible values: [ADDRESS_MODE_UNSPECIFIED, MODE_IPV4, MODE_IPV6] *)
  network : string prop;
      (** The name of the GCE VPC network to which the
instance is connected. *)
  reserved_ip_range : string prop option; [@option]
      (** A /29 CIDR block that identifies the range of IP
addresses reserved for this instance. *)
}
[@@deriving yojson_of]
(** VPC networks to which the instance is connected. For this version,
only a single network is supported. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_filestore_instance = {
  description : string prop option; [@option]
      (** A description of the instance. *)
  id : string prop option; [@option]  (** id *)
  kms_key_name : string prop option; [@option]
      (** KMS key name used for data encryption. *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The name of the location of the instance. This can be a region for ENTERPRISE tier instances. *)
  name : string prop;  (** The resource name of the instance. *)
  project : string prop option; [@option]  (** project *)
  tier : string prop;
      (** The service tier of the instance.
Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD, ZONAL, REGIONAL and ENTERPRISE *)
  zone : string prop option; [@option]
      (** The name of the Filestore zone of the instance. *)
  file_shares : file_shares list;
  networks : networks list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_instance *)

let file_shares__nfs_export_options ?access_mode ?anon_gid ?anon_uid
    ?ip_ranges ?squash_mode () : file_shares__nfs_export_options =
  { access_mode; anon_gid; anon_uid; ip_ranges; squash_mode }

let file_shares ?source_backup ~capacity_gb ~name ~nfs_export_options
    () : file_shares =
  { capacity_gb; name; source_backup; nfs_export_options }

let networks ?connect_mode ?reserved_ip_range ~modes ~network () :
    networks =
  { connect_mode; modes; network; reserved_ip_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_filestore_instance ?description ?id ?kms_key_name ?labels
    ?location ?project ?zone ?timeouts ~name ~tier ~file_shares
    ~networks () : google_filestore_instance =
  {
    description;
    id;
    kms_key_name;
    labels;
    location;
    name;
    project;
    tier;
    zone;
    file_shares;
    networks;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  zone : string prop;
}

let make ?description ?id ?kms_key_name ?labels ?location ?project
    ?zone ?timeouts ~name ~tier ~file_shares ~networks __id =
  let __type = "google_filestore_instance" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tier = Prop.computed __type __id "tier";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_filestore_instance
        (google_filestore_instance ?description ?id ?kms_key_name
           ?labels ?location ?project ?zone ?timeouts ~name ~tier
           ~file_shares ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?kms_key_name ?labels
    ?location ?project ?zone ?timeouts ~name ~tier ~file_shares
    ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?kms_key_name ?labels ?location ?project
      ?zone ?timeouts ~name ~tier ~file_shares ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
