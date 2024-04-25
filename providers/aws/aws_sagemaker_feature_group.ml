(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type feature_definition = {
  feature_name : string prop option; [@option]
  feature_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : feature_definition) -> ()

let yojson_of_feature_definition =
  (function
   | { feature_name = v_feature_name; feature_type = v_feature_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_feature_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "feature_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_feature_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "feature_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : feature_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_feature_definition

[@@@deriving.end]

type offline_store_config__data_catalog_config = {
  catalog : string prop option; [@option]
  database : string prop option; [@option]
  table_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : offline_store_config__data_catalog_config) -> ()

let yojson_of_offline_store_config__data_catalog_config =
  (function
   | {
       catalog = v_catalog;
       database = v_database;
       table_name = v_table_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_table_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_database with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database", arg in
             bnd :: bnds
       in
       let bnds =
         match v_catalog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "catalog", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : offline_store_config__data_catalog_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_offline_store_config__data_catalog_config

[@@@deriving.end]

type offline_store_config__s3_storage_config = {
  kms_key_id : string prop option; [@option]
  resolved_output_s3_uri : string prop option; [@option]
  s3_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : offline_store_config__s3_storage_config) -> ()

let yojson_of_offline_store_config__s3_storage_config =
  (function
   | {
       kms_key_id = v_kms_key_id;
       resolved_output_s3_uri = v_resolved_output_s3_uri;
       s3_uri = v_s3_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         match v_resolved_output_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resolved_output_s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : offline_store_config__s3_storage_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_offline_store_config__s3_storage_config

[@@@deriving.end]

type offline_store_config = {
  disable_glue_table_creation : bool prop option; [@option]
  table_format : string prop option; [@option]
  data_catalog_config :
    offline_store_config__data_catalog_config list;
  s3_storage_config : offline_store_config__s3_storage_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : offline_store_config) -> ()

let yojson_of_offline_store_config =
  (function
   | {
       disable_glue_table_creation = v_disable_glue_table_creation;
       table_format = v_table_format;
       data_catalog_config = v_data_catalog_config;
       s3_storage_config = v_s3_storage_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_offline_store_config__s3_storage_config
             v_s3_storage_config
         in
         ("s3_storage_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_offline_store_config__data_catalog_config
             v_data_catalog_config
         in
         ("data_catalog_config", arg) :: bnds
       in
       let bnds =
         match v_table_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_glue_table_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_glue_table_creation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : offline_store_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_offline_store_config

[@@@deriving.end]

type online_store_config__security_config = {
  kms_key_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : online_store_config__security_config) -> ()

let yojson_of_online_store_config__security_config =
  (function
   | { kms_key_id = v_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : online_store_config__security_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_online_store_config__security_config

[@@@deriving.end]

type online_store_config__ttl_duration = {
  unit : string prop option; [@option]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : online_store_config__ttl_duration) -> ()

let yojson_of_online_store_config__ttl_duration =
  (function
   | { unit = v_unit; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : online_store_config__ttl_duration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_online_store_config__ttl_duration

[@@@deriving.end]

type online_store_config = {
  enable_online_store : bool prop option; [@option]
  storage_type : string prop option; [@option]
  security_config : online_store_config__security_config list;
  ttl_duration : online_store_config__ttl_duration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : online_store_config) -> ()

let yojson_of_online_store_config =
  (function
   | {
       enable_online_store = v_enable_online_store;
       storage_type = v_storage_type;
       security_config = v_security_config;
       ttl_duration = v_ttl_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_online_store_config__ttl_duration
             v_ttl_duration
         in
         ("ttl_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_online_store_config__security_config
             v_security_config
         in
         ("security_config", arg) :: bnds
       in
       let bnds =
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_online_store with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_online_store", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : online_store_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_online_store_config

[@@@deriving.end]

type aws_sagemaker_feature_group = {
  description : string prop option; [@option]
  event_time_feature_name : string prop;
  feature_group_name : string prop;
  id : string prop option; [@option]
  record_identifier_feature_name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  feature_definition : feature_definition list;
  offline_store_config : offline_store_config list;
  online_store_config : online_store_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_feature_group) -> ()

let yojson_of_aws_sagemaker_feature_group =
  (function
   | {
       description = v_description;
       event_time_feature_name = v_event_time_feature_name;
       feature_group_name = v_feature_group_name;
       id = v_id;
       record_identifier_feature_name =
         v_record_identifier_feature_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       feature_definition = v_feature_definition;
       offline_store_config = v_offline_store_config;
       online_store_config = v_online_store_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_online_store_config
             v_online_store_config
         in
         ("online_store_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_offline_store_config
             v_offline_store_config
         in
         ("offline_store_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_feature_definition
             v_feature_definition
         in
         ("feature_definition", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_record_identifier_feature_name
         in
         ("record_identifier_feature_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_feature_group_name
         in
         ("feature_group_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_event_time_feature_name
         in
         ("event_time_feature_name", arg) :: bnds
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
    : aws_sagemaker_feature_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_feature_group

[@@@deriving.end]

let feature_definition ?feature_name ?feature_type () :
    feature_definition =
  { feature_name; feature_type }

let offline_store_config__data_catalog_config ?catalog ?database
    ?table_name () : offline_store_config__data_catalog_config =
  { catalog; database; table_name }

let offline_store_config__s3_storage_config ?kms_key_id
    ?resolved_output_s3_uri ~s3_uri () :
    offline_store_config__s3_storage_config =
  { kms_key_id; resolved_output_s3_uri; s3_uri }

let offline_store_config ?disable_glue_table_creation ?table_format
    ?(data_catalog_config = []) ~s3_storage_config () :
    offline_store_config =
  {
    disable_glue_table_creation;
    table_format;
    data_catalog_config;
    s3_storage_config;
  }

let online_store_config__security_config ?kms_key_id () :
    online_store_config__security_config =
  { kms_key_id }

let online_store_config__ttl_duration ?unit ?value () :
    online_store_config__ttl_duration =
  { unit; value }

let online_store_config ?enable_online_store ?storage_type
    ?(security_config = []) ?(ttl_duration = []) () :
    online_store_config =
  {
    enable_online_store;
    storage_type;
    security_config;
    ttl_duration;
  }

let aws_sagemaker_feature_group ?description ?id ?tags ?tags_all
    ?(offline_store_config = []) ?(online_store_config = [])
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition ()
    : aws_sagemaker_feature_group =
  {
    description;
    event_time_feature_name;
    feature_group_name;
    id;
    record_identifier_feature_name;
    role_arn;
    tags;
    tags_all;
    feature_definition;
    offline_store_config;
    online_store_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  event_time_feature_name : string prop;
  feature_group_name : string prop;
  id : string prop;
  record_identifier_feature_name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all
    ?(offline_store_config = []) ?(online_store_config = [])
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition
    __id =
  let __type = "aws_sagemaker_feature_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_time_feature_name =
         Prop.computed __type __id "event_time_feature_name";
       feature_group_name =
         Prop.computed __type __id "feature_group_name";
       id = Prop.computed __type __id "id";
       record_identifier_feature_name =
         Prop.computed __type __id "record_identifier_feature_name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_feature_group
        (aws_sagemaker_feature_group ?description ?id ?tags ?tags_all
           ~offline_store_config ~online_store_config
           ~event_time_feature_name ~feature_group_name
           ~record_identifier_feature_name ~role_arn
           ~feature_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ?(offline_store_config = []) ?(online_store_config = [])
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~offline_store_config
      ~online_store_config ~event_time_feature_name
      ~feature_group_name ~record_identifier_feature_name ~role_arn
      ~feature_definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
