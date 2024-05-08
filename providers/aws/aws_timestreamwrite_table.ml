(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string prop option; [@option]
  encryption_option : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  object_key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration) ->
  ()

let yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    =
  (function
   | {
       bucket_name = v_bucket_name;
       encryption_option = v_encryption_option;
       kms_key_id = v_kms_key_id;
       object_key_prefix = v_object_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_object_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_key_prefix", arg in
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
       let bnds =
         match v_encryption_option with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_option", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration

[@@@deriving.end]

type magnetic_store_write_properties__magnetic_store_rejected_data_location = {
  s3_configuration :
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       magnetic_store_write_properties__magnetic_store_rejected_data_location) ->
  ()

let yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location
    =
  (function
   | { s3_configuration = v_s3_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : magnetic_store_write_properties__magnetic_store_rejected_data_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location

[@@@deriving.end]

type magnetic_store_write_properties = {
  enable_magnetic_store_writes : bool prop option; [@option]
  magnetic_store_rejected_data_location :
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : magnetic_store_write_properties) -> ()

let yojson_of_magnetic_store_write_properties =
  (function
   | {
       enable_magnetic_store_writes = v_enable_magnetic_store_writes;
       magnetic_store_rejected_data_location =
         v_magnetic_store_rejected_data_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_magnetic_store_rejected_data_location
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_magnetic_store_write_properties__magnetic_store_rejected_data_location)
               v_magnetic_store_rejected_data_location
           in
           let bnd = "magnetic_store_rejected_data_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enable_magnetic_store_writes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_magnetic_store_writes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : magnetic_store_write_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_magnetic_store_write_properties

[@@@deriving.end]

type retention_properties = {
  magnetic_store_retention_period_in_days : float prop;
  memory_store_retention_period_in_hours : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention_properties) -> ()

let yojson_of_retention_properties =
  (function
   | {
       magnetic_store_retention_period_in_days =
         v_magnetic_store_retention_period_in_days;
       memory_store_retention_period_in_hours =
         v_memory_store_retention_period_in_hours;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_memory_store_retention_period_in_hours
         in
         ("memory_store_retention_period_in_hours", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_magnetic_store_retention_period_in_days
         in
         ("magnetic_store_retention_period_in_days", arg) :: bnds
       in
       `Assoc bnds
    : retention_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention_properties

[@@@deriving.end]

type schema__composite_partition_key = {
  enforcement_in_record : string prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema__composite_partition_key) -> ()

let yojson_of_schema__composite_partition_key =
  (function
   | {
       enforcement_in_record = v_enforcement_in_record;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enforcement_in_record with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enforcement_in_record", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : schema__composite_partition_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema__composite_partition_key

[@@@deriving.end]

type schema = {
  composite_partition_key : schema__composite_partition_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema) -> ()

let yojson_of_schema =
  (function
   | { composite_partition_key = v_composite_partition_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_composite_partition_key then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_schema__composite_partition_key)
               v_composite_partition_key
           in
           let bnd = "composite_partition_key", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema

[@@@deriving.end]

type aws_timestreamwrite_table = {
  database_name : string prop;
  id : string prop option; [@option]
  table_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  magnetic_store_write_properties :
    magnetic_store_write_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention_properties : retention_properties list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  schema : schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_timestreamwrite_table) -> ()

let yojson_of_aws_timestreamwrite_table =
  (function
   | {
       database_name = v_database_name;
       id = v_id;
       table_name = v_table_name;
       tags = v_tags;
       tags_all = v_tags_all;
       magnetic_store_write_properties =
         v_magnetic_store_write_properties;
       retention_properties = v_retention_properties;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_schema then bnds
         else
           let arg = (yojson_of_list yojson_of_schema) v_schema in
           let bnd = "schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_retention_properties then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention_properties)
               v_retention_properties
           in
           let bnd = "retention_properties", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_magnetic_store_write_properties then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_magnetic_store_write_properties)
               v_magnetic_store_write_properties
           in
           let bnd = "magnetic_store_write_properties", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_timestreamwrite_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_timestreamwrite_table

[@@@deriving.end]

let magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    ?bucket_name ?encryption_option ?kms_key_id ?object_key_prefix ()
    :
    magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration
    =
  { bucket_name; encryption_option; kms_key_id; object_key_prefix }

let magnetic_store_write_properties__magnetic_store_rejected_data_location
    ?(s3_configuration = []) () :
    magnetic_store_write_properties__magnetic_store_rejected_data_location
    =
  { s3_configuration }

let magnetic_store_write_properties ?enable_magnetic_store_writes
    ?(magnetic_store_rejected_data_location = []) () :
    magnetic_store_write_properties =
  {
    enable_magnetic_store_writes;
    magnetic_store_rejected_data_location;
  }

let retention_properties ~magnetic_store_retention_period_in_days
    ~memory_store_retention_period_in_hours () : retention_properties
    =
  {
    magnetic_store_retention_period_in_days;
    memory_store_retention_period_in_hours;
  }

let schema__composite_partition_key ?enforcement_in_record ?name
    ~type_ () : schema__composite_partition_key =
  { enforcement_in_record; name; type_ }

let schema ?(composite_partition_key = []) () : schema =
  { composite_partition_key }

let aws_timestreamwrite_table ?id ?tags ?tags_all
    ?(magnetic_store_write_properties = [])
    ?(retention_properties = []) ?(schema = []) ~database_name
    ~table_name () : aws_timestreamwrite_table =
  {
    database_name;
    id;
    table_name;
    tags;
    tags_all;
    magnetic_store_write_properties;
    retention_properties;
    schema;
  }

type t = {
  tf_name : string;
  arn : string prop;
  database_name : string prop;
  id : string prop;
  table_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(magnetic_store_write_properties = [])
    ?(retention_properties = []) ?(schema = []) ~database_name
    ~table_name __id =
  let __type = "aws_timestreamwrite_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       table_name = Prop.computed __type __id "table_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_timestreamwrite_table
        (aws_timestreamwrite_table ?id ?tags ?tags_all
           ~magnetic_store_write_properties ~retention_properties
           ~schema ~database_name ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(magnetic_store_write_properties = [])
    ?(retention_properties = []) ?(schema = []) ~database_name
    ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~magnetic_store_write_properties
      ~retention_properties ~schema ~database_name ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
