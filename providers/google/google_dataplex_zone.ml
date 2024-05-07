(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type discovery_spec__csv_options = {
  delimiter : string prop option; [@option]
  disable_type_inference : bool prop option; [@option]
  encoding : string prop option; [@option]
  header_rows : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : discovery_spec__csv_options) -> ()

let yojson_of_discovery_spec__csv_options =
  (function
   | {
       delimiter = v_delimiter;
       disable_type_inference = v_disable_type_inference;
       encoding = v_encoding;
       header_rows = v_header_rows;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_header_rows with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "header_rows", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_type_inference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_type_inference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delimiter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : discovery_spec__csv_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_discovery_spec__csv_options

[@@@deriving.end]

type discovery_spec__json_options = {
  disable_type_inference : bool prop option; [@option]
  encoding : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : discovery_spec__json_options) -> ()

let yojson_of_discovery_spec__json_options =
  (function
   | {
       disable_type_inference = v_disable_type_inference;
       encoding = v_encoding;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_type_inference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_type_inference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : discovery_spec__json_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_discovery_spec__json_options

[@@@deriving.end]

type discovery_spec = {
  enabled : bool prop;
  exclude_patterns : string prop list option; [@option]
  include_patterns : string prop list option; [@option]
  schedule : string prop option; [@option]
  csv_options : discovery_spec__csv_options list;
  json_options : discovery_spec__json_options list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : discovery_spec) -> ()

let yojson_of_discovery_spec =
  (function
   | {
       enabled = v_enabled;
       exclude_patterns = v_exclude_patterns;
       include_patterns = v_include_patterns;
       schedule = v_schedule;
       csv_options = v_csv_options;
       json_options = v_json_options;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_discovery_spec__json_options
             v_json_options
         in
         ("json_options", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_discovery_spec__csv_options
             v_csv_options
         in
         ("csv_options", arg) :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "include_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_patterns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_patterns", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : discovery_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_discovery_spec

[@@@deriving.end]

type resource_spec = { location_type : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_spec) -> ()

let yojson_of_resource_spec =
  (function
   | { location_type = v_location_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_type in
         ("location_type", arg) :: bnds
       in
       `Assoc bnds
    : resource_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_spec

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

type asset_status = {
  active_assets : float prop;
  security_policy_applying_assets : float prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : asset_status) -> ()

let yojson_of_asset_status =
  (function
   | {
       active_assets = v_active_assets;
       security_policy_applying_assets =
         v_security_policy_applying_assets;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_security_policy_applying_assets
         in
         ("security_policy_applying_assets", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_active_assets in
         ("active_assets", arg) :: bnds
       in
       `Assoc bnds
    : asset_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_asset_status

[@@@deriving.end]

type google_dataplex_zone = {
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  discovery_spec : discovery_spec list;
  resource_spec : resource_spec list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dataplex_zone) -> ()

let yojson_of_google_dataplex_zone =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       lake = v_lake;
       location = v_location;
       name = v_name;
       project = v_project;
       type_ = v_type_;
       discovery_spec = v_discovery_spec;
       resource_spec = v_resource_spec;
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
           yojson_of_list yojson_of_resource_spec v_resource_spec
         in
         ("resource_spec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_discovery_spec v_discovery_spec
         in
         ("discovery_spec", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lake in
         ("lake", arg) :: bnds
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
       `Assoc bnds
    : google_dataplex_zone -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dataplex_zone

[@@@deriving.end]

let discovery_spec__csv_options ?delimiter ?disable_type_inference
    ?encoding ?header_rows () : discovery_spec__csv_options =
  { delimiter; disable_type_inference; encoding; header_rows }

let discovery_spec__json_options ?disable_type_inference ?encoding ()
    : discovery_spec__json_options =
  { disable_type_inference; encoding }

let discovery_spec ?exclude_patterns ?include_patterns ?schedule
    ?(csv_options = []) ?(json_options = []) ~enabled () :
    discovery_spec =
  {
    enabled;
    exclude_patterns;
    include_patterns;
    schedule;
    csv_options;
    json_options;
  }

let resource_spec ~location_type () : resource_spec =
  { location_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dataplex_zone ?description ?display_name ?id ?labels
    ?project ?timeouts ~lake ~location ~name ~type_ ~discovery_spec
    ~resource_spec () : google_dataplex_zone =
  {
    description;
    display_name;
    id;
    labels;
    lake;
    location;
    name;
    project;
    type_;
    discovery_spec;
    resource_spec;
    timeouts;
  }

type t = {
  tf_name : string;
  asset_status : asset_status list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  lake : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?project ?timeouts
    ~lake ~location ~name ~type_ ~discovery_spec ~resource_spec __id
    =
  let __type = "google_dataplex_zone" in
  let __attrs =
    ({
       tf_name = __id;
       asset_status = Prop.computed __type __id "asset_status";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       lake = Prop.computed __type __id "lake";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
      yojson_of_google_dataplex_zone
        (google_dataplex_zone ?description ?display_name ?id ?labels
           ?project ?timeouts ~lake ~location ~name ~type_
           ~discovery_spec ~resource_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?timeouts ~lake ~location ~name ~type_ ~discovery_spec
    ~resource_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?project ?timeouts
      ~lake ~location ~name ~type_ ~discovery_spec ~resource_spec
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
