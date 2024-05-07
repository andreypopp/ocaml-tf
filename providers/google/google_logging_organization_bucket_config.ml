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

type google_logging_organization_bucket_config = {
  bucket_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  organization : string prop;
  retention_days : float prop option; [@option]
  cmek_settings : cmek_settings list;
  index_configs : index_configs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_organization_bucket_config) -> ()

let yojson_of_google_logging_organization_bucket_config =
  (function
   | {
       bucket_id = v_bucket_id;
       description = v_description;
       id = v_id;
       location = v_location;
       organization = v_organization;
       retention_days = v_retention_days;
       cmek_settings = v_cmek_settings;
       index_configs = v_index_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_index_configs v_index_configs
         in
         ("index_configs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_cmek_settings v_cmek_settings
         in
         ("cmek_settings", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
    : google_logging_organization_bucket_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_organization_bucket_config

[@@@deriving.end]

let cmek_settings ~kms_key_name () : cmek_settings = { kms_key_name }

let index_configs ~field_path ~type_ () : index_configs =
  { field_path; type_ }

let google_logging_organization_bucket_config ?description ?id
    ?retention_days ?(cmek_settings = []) ~bucket_id ~location
    ~organization ~index_configs () :
    google_logging_organization_bucket_config =
  {
    bucket_id;
    description;
    id;
    location;
    organization;
    retention_days;
    cmek_settings;
    index_configs;
  }

type t = {
  tf_name : string;
  bucket_id : string prop;
  description : string prop;
  id : string prop;
  lifecycle_state : string prop;
  location : string prop;
  name : string prop;
  organization : string prop;
  retention_days : float prop;
}

let make ?description ?id ?retention_days ?(cmek_settings = [])
    ~bucket_id ~location ~organization ~index_configs __id =
  let __type = "google_logging_organization_bucket_config" in
  let __attrs =
    ({
       tf_name = __id;
       bucket_id = Prop.computed __type __id "bucket_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       retention_days = Prop.computed __type __id "retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_organization_bucket_config
        (google_logging_organization_bucket_config ?description ?id
           ?retention_days ~cmek_settings ~bucket_id ~location
           ~organization ~index_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?retention_days
    ?(cmek_settings = []) ~bucket_id ~location ~organization
    ~index_configs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?retention_days ~cmek_settings ~bucket_id
      ~location ~organization ~index_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
