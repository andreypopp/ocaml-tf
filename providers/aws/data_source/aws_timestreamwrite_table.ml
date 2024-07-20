(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type magnetic_store_write_properties__magnetic_store_rejected_data_location__s3_configuration = {
  bucket_name : string prop;
  encryption_option : string prop;
  kms_key_id : string prop;
  object_key_prefix : string prop;
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
         let arg =
           yojson_of_prop yojson_of_string v_object_key_prefix
         in
         ("object_key_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_option
         in
         ("encryption_option", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
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
  enable_magnetic_store_writes : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool
             v_enable_magnetic_store_writes
         in
         ("enable_magnetic_store_writes", arg) :: bnds
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
  enforcement_in_record : string prop;
  name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_enforcement_in_record
         in
         ("enforcement_in_record", arg) :: bnds
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
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_timestreamwrite_table) -> ()

let yojson_of_aws_timestreamwrite_table =
  (function
   | { database_name = v_database_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_timestreamwrite_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_timestreamwrite_table

[@@@deriving.end]

let aws_timestreamwrite_table ~database_name ~name () :
    aws_timestreamwrite_table =
  { database_name; name }

type t = {
  tf_name : string;
  arn : string prop;
  creation_time : string prop;
  database_name : string prop;
  last_updated_time : string prop;
  magnetic_store_write_properties :
    magnetic_store_write_properties list prop;
  name : string prop;
  retention_properties : retention_properties list prop;
  schema : schema list prop;
  table_status : string prop;
}

let make ~database_name ~name __id =
  let __type = "aws_timestreamwrite_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_time = Prop.computed __type __id "creation_time";
       database_name = Prop.computed __type __id "database_name";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       magnetic_store_write_properties =
         Prop.computed __type __id "magnetic_store_write_properties";
       name = Prop.computed __type __id "name";
       retention_properties =
         Prop.computed __type __id "retention_properties";
       schema = Prop.computed __type __id "schema";
       table_status = Prop.computed __type __id "table_status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_timestreamwrite_table
        (aws_timestreamwrite_table ~database_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~database_name ~name __id =
  let (r : _ Tf_core.resource) = make ~database_name ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
