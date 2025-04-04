(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cmek_settings = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : cmek_settings) -> ()

let yojson_of_cmek_settings =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : cmek_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cmek_settings

[@@@deriving.end]

type index_configs = {
  field_path : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : index_configs) -> ()

let yojson_of_index_configs =
  (function
   | { field_path = v_field_path; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_field_path in
         ("field_path", arg) :: bnds
       in
       `Assoc bnds
    : index_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_index_configs

[@@@deriving.end]

type google_logging_project_bucket_config = {
  bucket_id : string prop;
  description : string prop option; [@option]
  enable_analytics : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  locked : bool prop option; [@option]
  project : string prop;
  retention_days : float prop option; [@option]
  cmek_settings : cmek_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  index_configs : index_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_project_bucket_config) -> ()

let yojson_of_google_logging_project_bucket_config =
  (function
   | {
       bucket_id = v_bucket_id;
       description = v_description;
       enable_analytics = v_enable_analytics;
       id = v_id;
       location = v_location;
       locked = v_locked;
       project = v_project;
       retention_days = v_retention_days;
       cmek_settings = v_cmek_settings;
       index_configs = v_index_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_index_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_index_configs) v_index_configs
           in
           let bnd = "index_configs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cmek_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cmek_settings) v_cmek_settings
           in
           let bnd = "cmek_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_retention_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         match v_locked with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "locked", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_enable_analytics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_analytics", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket_id in
         ("bucket_id", arg) :: bnds
       in
       `Assoc bnds
    : google_logging_project_bucket_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_project_bucket_config

[@@@deriving.end]

let cmek_settings ~kms_key_name () : cmek_settings = { kms_key_name }

let index_configs ~field_path ~type_ () : index_configs =
  { field_path; type_ }

let google_logging_project_bucket_config ?description
    ?enable_analytics ?id ?locked ?retention_days
    ?(cmek_settings = []) ~bucket_id ~location ~project
    ~index_configs () : google_logging_project_bucket_config =
  {
    bucket_id;
    description;
    enable_analytics;
    id;
    location;
    locked;
    project;
    retention_days;
    cmek_settings;
    index_configs;
  }

type t = {
  tf_name : string;
  bucket_id : string prop;
  description : string prop;
  enable_analytics : bool prop;
  id : string prop;
  lifecycle_state : string prop;
  location : string prop;
  locked : bool prop;
  name : string prop;
  project : string prop;
  retention_days : float prop;
}

let make ?description ?enable_analytics ?id ?locked ?retention_days
    ?(cmek_settings = []) ~bucket_id ~location ~project
    ~index_configs __id =
  let __type = "google_logging_project_bucket_config" in
  let __attrs =
    ({
       tf_name = __id;
       bucket_id = Prop.computed __type __id "bucket_id";
       description = Prop.computed __type __id "description";
       enable_analytics =
         Prop.computed __type __id "enable_analytics";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       location = Prop.computed __type __id "location";
       locked = Prop.computed __type __id "locked";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       retention_days = Prop.computed __type __id "retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_project_bucket_config
        (google_logging_project_bucket_config ?description
           ?enable_analytics ?id ?locked ?retention_days
           ~cmek_settings ~bucket_id ~location ~project
           ~index_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_analytics ?id ?locked
    ?retention_days ?(cmek_settings = []) ~bucket_id ~location
    ~project ~index_configs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_analytics ?id ?locked ?retention_days
      ~cmek_settings ~bucket_id ~location ~project ~index_configs
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
