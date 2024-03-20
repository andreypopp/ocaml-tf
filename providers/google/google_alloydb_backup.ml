(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_config = {
  kms_key_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type encryption_info = {
  encryption_type : string prop;
  kms_key_versions : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_info) -> ()

let yojson_of_encryption_info =
  (function
   | {
       encryption_type = v_encryption_type;
       kms_key_versions = v_kms_key_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_kms_key_versions
         in
         ("kms_key_versions", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : encryption_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_info

[@@@deriving.end]

type expiry_quantity = {
  retention_count : float prop;
  total_retention_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : expiry_quantity) -> ()

let yojson_of_expiry_quantity =
  (function
   | {
       retention_count = v_retention_count;
       total_retention_count = v_total_retention_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_retention_count
         in
         ("total_retention_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_retention_count
         in
         ("retention_count", arg) :: bnds
       in
       `Assoc bnds
    : expiry_quantity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_expiry_quantity

[@@@deriving.end]

type google_alloydb_backup = {
  annotations : (string * string prop) list option; [@option]
  backup_id : string prop;
  cluster_name : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  encryption_config : encryption_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_alloydb_backup) -> ()

let yojson_of_google_alloydb_backup =
  (function
   | {
       annotations = v_annotations;
       backup_id = v_backup_id;
       cluster_name = v_cluster_name;
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       type_ = v_type_;
       encryption_config = v_encryption_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_config
             v_encryption_config
         in
         ("encryption_config", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_backup_id in
         ("backup_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_alloydb_backup -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_alloydb_backup

[@@@deriving.end]

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
