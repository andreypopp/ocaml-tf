(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_filestore_backup = {
  description : string prop option; [@option]
      (** A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The name of the location of the instance. This can be a region for ENTERPRISE tier instances. *)
  name : string prop;
      (** The resource name of the backup. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  source_file_share : string prop;
      (** Name of the file share in the source Cloud Filestore instance that the backup is created from. *)
  source_instance : string prop;
      (** The resource name of the source Cloud Filestore instance, in the format projects/{projectId}/locations/{locationId}/instances/{instanceId}, used to create this backup. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_filestore_backup *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_filestore_backup ?description ?id ?labels ?project
    ?timeouts ~location ~name ~source_file_share ~source_instance ()
    : google_filestore_backup =
  {
    description;
    id;
    labels;
    location;
    name;
    project;
    source_file_share;
    source_instance;
    timeouts;
  }

type t = {
  capacity_gb : string prop;
  create_time : string prop;
  description : string prop;
  download_bytes : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  kms_key_name : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  source_file_share : string prop;
  source_instance : string prop;
  source_instance_tier : string prop;
  state : string prop;
  storage_bytes : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?id ?labels ?project ?timeouts ~location ~name
    ~source_file_share ~source_instance __id =
  let __type = "google_filestore_backup" in
  let __attrs =
    ({
       capacity_gb = Prop.computed __type __id "capacity_gb";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       download_bytes = Prop.computed __type __id "download_bytes";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       source_file_share =
         Prop.computed __type __id "source_file_share";
       source_instance = Prop.computed __type __id "source_instance";
       source_instance_tier =
         Prop.computed __type __id "source_instance_tier";
       state = Prop.computed __type __id "state";
       storage_bytes = Prop.computed __type __id "storage_bytes";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_filestore_backup
        (google_filestore_backup ?description ?id ?labels ?project
           ?timeouts ~location ~name ~source_file_share
           ~source_instance ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name ~source_file_share ~source_instance __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~location ~name
      ~source_file_share ~source_instance __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
