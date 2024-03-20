(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_config = {
  kms_key_name : string prop option; [@option]
      (** The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. *)
}
[@@deriving yojson_of]
(** EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type encryption_info = {
  encryption_type : string prop;  (** encryption_type *)
  kms_key_versions : string prop list;  (** kms_key_versions *)
}
[@@deriving yojson_of]

type expiry_quantity = {
  retention_count : float prop;  (** retention_count *)
  total_retention_count : float prop;  (** total_retention_count *)
}
[@@deriving yojson_of]

type google_alloydb_backup = {
  annotations : (string * string prop) list option; [@option]
      (** Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field 'effective_annotations' for all of the annotations present on the resource. *)
  backup_id : string prop;  (** The ID of the alloydb backup. *)
  cluster_name : string prop;
      (** The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}). *)
  description : string prop option; [@option]
      (** User-provided description of the backup. *)
  display_name : string prop option; [@option]
      (** User-settable and human-readable display name for the Backup. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels for the alloydb backup. An object containing a list of key: value pairs. Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location where the alloydb backup should reside. *)
  project : string prop option; [@option]  (** project *)
  type_ : string prop option; [@option] [@key "type"]
      (** The backup type, which suggests the trigger for the backup. Possible values: [TYPE_UNSPECIFIED, ON_DEMAND, AUTOMATED, CONTINUOUS] *)
  encryption_config : encryption_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_alloydb_backup *)

let encryption_config ?kms_key_name () : encryption_config =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_alloydb_backup ?annotations ?description ?display_name ?id
    ?labels ?project ?type_ ?timeouts ~backup_id ~cluster_name
    ~location ~encryption_config () : google_alloydb_backup =
  {
    annotations;
    backup_id;
    cluster_name;
    description;
    display_name;
    id;
    labels;
    location;
    project;
    type_;
    encryption_config;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  backup_id : string prop;
  cluster_name : string prop;
  cluster_uid : string prop;
  create_time : string prop;
  delete_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  encryption_info : encryption_info list prop;
  etag : string prop;
  expiry_quantity : expiry_quantity list prop;
  expiry_time : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  size_bytes : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?description ?display_name ?id ?labels ?project
    ?type_ ?timeouts ~backup_id ~cluster_name ~location
    ~encryption_config __id =
  let __type = "google_alloydb_backup" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       backup_id = Prop.computed __type __id "backup_id";
       cluster_name = Prop.computed __type __id "cluster_name";
       cluster_uid = Prop.computed __type __id "cluster_uid";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       encryption_info = Prop.computed __type __id "encryption_info";
       etag = Prop.computed __type __id "etag";
       expiry_quantity = Prop.computed __type __id "expiry_quantity";
       expiry_time = Prop.computed __type __id "expiry_time";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       size_bytes = Prop.computed __type __id "size_bytes";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_alloydb_backup
        (google_alloydb_backup ?annotations ?description
           ?display_name ?id ?labels ?project ?type_ ?timeouts
           ~backup_id ~cluster_name ~location ~encryption_config ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?display_name ?id
    ?labels ?project ?type_ ?timeouts ~backup_id ~cluster_name
    ~location ~encryption_config __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?display_name ?id ?labels ?project
      ?type_ ?timeouts ~backup_id ~cluster_name ~location
      ~encryption_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
