(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type attribute = {
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attribute) -> ()

let yojson_of_attribute =
  (function
   | { name = v_name; type_ = v_type_ } ->
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
       `Assoc bnds
    : attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attribute

[@@@deriving.end]

type global_secondary_index = {
  hash_key : string prop;
  name : string prop;
  non_key_attributes : string prop list option; [@option]
  projection_type : string prop;
  range_key : string prop option; [@option]
  read_capacity : float prop option; [@option]
  write_capacity : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : global_secondary_index) -> ()

let yojson_of_global_secondary_index =
  (function
   | {
       hash_key = v_hash_key;
       name = v_name;
       non_key_attributes = v_non_key_attributes;
       projection_type = v_projection_type;
       range_key = v_range_key;
       read_capacity = v_read_capacity;
       write_capacity = v_write_capacity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_write_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "write_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_projection_type
         in
         ("projection_type", arg) :: bnds
       in
       let bnds =
         match v_non_key_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "non_key_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hash_key in
         ("hash_key", arg) :: bnds
       in
       `Assoc bnds
    : global_secondary_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_global_secondary_index

[@@@deriving.end]

type import_table__input_format_options__csv = {
  delimiter : string prop option; [@option]
  header_list : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import_table__input_format_options__csv) -> ()

let yojson_of_import_table__input_format_options__csv =
  (function
   | { delimiter = v_delimiter; header_list = v_header_list } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_header_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "header_list", arg in
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
    : import_table__input_format_options__csv ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import_table__input_format_options__csv

[@@@deriving.end]

type import_table__input_format_options = {
  csv : import_table__input_format_options__csv list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import_table__input_format_options) -> ()

let yojson_of_import_table__input_format_options =
  (function
   | { csv = v_csv } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_csv then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_import_table__input_format_options__csv)
               v_csv
           in
           let bnd = "csv", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : import_table__input_format_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import_table__input_format_options

[@@@deriving.end]

type import_table__s3_bucket_source = {
  bucket : string prop;
  bucket_owner : string prop option; [@option]
  key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import_table__s3_bucket_source) -> ()

let yojson_of_import_table__s3_bucket_source =
  (function
   | {
       bucket = v_bucket;
       bucket_owner = v_bucket_owner;
       key_prefix = v_key_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : import_table__s3_bucket_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import_table__s3_bucket_source

[@@@deriving.end]

type import_table = {
  input_compression_type : string prop option; [@option]
  input_format : string prop;
  input_format_options : import_table__input_format_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_bucket_source : import_table__s3_bucket_source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : import_table) -> ()

let yojson_of_import_table =
  (function
   | {
       input_compression_type = v_input_compression_type;
       input_format = v_input_format;
       input_format_options = v_input_format_options;
       s3_bucket_source = v_s3_bucket_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_bucket_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_import_table__s3_bucket_source)
               v_s3_bucket_source
           in
           let bnd = "s3_bucket_source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_input_format_options then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_import_table__input_format_options)
               v_input_format_options
           in
           let bnd = "input_format_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_input_format in
         ("input_format", arg) :: bnds
       in
       let bnds =
         match v_input_compression_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "input_compression_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : import_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_import_table

[@@@deriving.end]

type local_secondary_index = {
  name : string prop;
  non_key_attributes : string prop list option; [@option]
  projection_type : string prop;
  range_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_secondary_index) -> ()

let yojson_of_local_secondary_index =
  (function
   | {
       name = v_name;
       non_key_attributes = v_non_key_attributes;
       projection_type = v_projection_type;
       range_key = v_range_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range_key in
         ("range_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_projection_type
         in
         ("projection_type", arg) :: bnds
       in
       let bnds =
         match v_non_key_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "non_key_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : local_secondary_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_secondary_index

[@@@deriving.end]

type point_in_time_recovery = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : point_in_time_recovery) -> ()

let yojson_of_point_in_time_recovery =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : point_in_time_recovery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_point_in_time_recovery

[@@@deriving.end]

type replica = {
  kms_key_arn : string prop option; [@option]
  point_in_time_recovery : bool prop option; [@option]
  propagate_tags : bool prop option; [@option]
  region_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | {
       kms_key_arn = v_kms_key_arn;
       point_in_time_recovery = v_point_in_time_recovery;
       propagate_tags = v_propagate_tags;
       region_name = v_region_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       let bnds =
         match v_propagate_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "propagate_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "point_in_time_recovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

[@@@deriving.end]

type server_side_encryption = {
  enabled : bool prop;
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption) -> ()

let yojson_of_server_side_encryption =
  (function
   | { enabled = v_enabled; kms_key_arn = v_kms_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : server_side_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption

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

type ttl = {
  attribute_name : string prop option; [@option]
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ttl) -> ()

let yojson_of_ttl =
  (function
   | { attribute_name = v_attribute_name; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_attribute_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "attribute_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ttl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ttl

[@@@deriving.end]

type aws_dynamodb_table = {
  billing_mode : string prop option; [@option]
  deletion_protection_enabled : bool prop option; [@option]
  hash_key : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  range_key : string prop option; [@option]
  read_capacity : float prop option; [@option]
  restore_date_time : string prop option; [@option]
  restore_source_name : string prop option; [@option]
  restore_to_latest_time : bool prop option; [@option]
  stream_enabled : bool prop option; [@option]
  stream_view_type : string prop option; [@option]
  table_class : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  write_capacity : float prop option; [@option]
  attribute : attribute list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  global_secondary_index : global_secondary_index list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  import_table : import_table list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  local_secondary_index : local_secondary_index list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  point_in_time_recovery : point_in_time_recovery list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  replica : replica list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  server_side_encryption : server_side_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  ttl : ttl list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table) -> ()

let yojson_of_aws_dynamodb_table =
  (function
   | {
       billing_mode = v_billing_mode;
       deletion_protection_enabled = v_deletion_protection_enabled;
       hash_key = v_hash_key;
       id = v_id;
       name = v_name;
       range_key = v_range_key;
       read_capacity = v_read_capacity;
       restore_date_time = v_restore_date_time;
       restore_source_name = v_restore_source_name;
       restore_to_latest_time = v_restore_to_latest_time;
       stream_enabled = v_stream_enabled;
       stream_view_type = v_stream_view_type;
       table_class = v_table_class;
       tags = v_tags;
       tags_all = v_tags_all;
       write_capacity = v_write_capacity;
       attribute = v_attribute;
       global_secondary_index = v_global_secondary_index;
       import_table = v_import_table;
       local_secondary_index = v_local_secondary_index;
       point_in_time_recovery = v_point_in_time_recovery;
       replica = v_replica;
       server_side_encryption = v_server_side_encryption;
       timeouts = v_timeouts;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ttl then bnds
         else
           let arg = (yojson_of_list yojson_of_ttl) v_ttl in
           let bnd = "ttl", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_server_side_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_server_side_encryption)
               v_server_side_encryption
           in
           let bnd = "server_side_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_replica then bnds
         else
           let arg = (yojson_of_list yojson_of_replica) v_replica in
           let bnd = "replica", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_point_in_time_recovery then bnds
         else
           let arg =
             (yojson_of_list yojson_of_point_in_time_recovery)
               v_point_in_time_recovery
           in
           let bnd = "point_in_time_recovery", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_secondary_index then bnds
         else
           let arg =
             (yojson_of_list yojson_of_local_secondary_index)
               v_local_secondary_index
           in
           let bnd = "local_secondary_index", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_import_table then bnds
         else
           let arg =
             (yojson_of_list yojson_of_import_table) v_import_table
           in
           let bnd = "import_table", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_global_secondary_index then bnds
         else
           let arg =
             (yojson_of_list yojson_of_global_secondary_index)
               v_global_secondary_index
           in
           let bnd = "global_secondary_index", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_attribute then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attribute) v_attribute
           in
           let bnd = "attribute", arg in
           bnd :: bnds
       in
       let bnds =
         match v_write_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "write_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_table_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_view_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stream_view_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stream_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "stream_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_to_latest_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restore_to_latest_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_source_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_source_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_restore_date_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "restore_date_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_capacity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "read_capacity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_range_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_hash_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hash_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_billing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table

[@@@deriving.end]

let attribute ~name ~type_ () : attribute = { name; type_ }

let global_secondary_index ?non_key_attributes ?range_key
    ?read_capacity ?write_capacity ~hash_key ~name ~projection_type
    () : global_secondary_index =
  {
    hash_key;
    name;
    non_key_attributes;
    projection_type;
    range_key;
    read_capacity;
    write_capacity;
  }

let import_table__input_format_options__csv ?delimiter ?header_list
    () : import_table__input_format_options__csv =
  { delimiter; header_list }

let import_table__input_format_options ?(csv = []) () :
    import_table__input_format_options =
  { csv }

let import_table__s3_bucket_source ?bucket_owner ?key_prefix ~bucket
    () : import_table__s3_bucket_source =
  { bucket; bucket_owner; key_prefix }

let import_table ?input_compression_type ?(input_format_options = [])
    ~input_format ~s3_bucket_source () : import_table =
  {
    input_compression_type;
    input_format;
    input_format_options;
    s3_bucket_source;
  }

let local_secondary_index ?non_key_attributes ~name ~projection_type
    ~range_key () : local_secondary_index =
  { name; non_key_attributes; projection_type; range_key }

let point_in_time_recovery ~enabled () : point_in_time_recovery =
  { enabled }

let replica ?kms_key_arn ?point_in_time_recovery ?propagate_tags
    ~region_name () : replica =
  {
    kms_key_arn;
    point_in_time_recovery;
    propagate_tags;
    region_name;
  }

let server_side_encryption ?kms_key_arn ~enabled () :
    server_side_encryption =
  { enabled; kms_key_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl ?attribute_name ?enabled () : ttl =
  { attribute_name; enabled }

let aws_dynamodb_table ?billing_mode ?deletion_protection_enabled
    ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
    ?restore_source_name ?restore_to_latest_time ?stream_enabled
    ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
    ?(import_table = []) ?(point_in_time_recovery = [])
    ?(server_side_encryption = []) ?timeouts ?(ttl = []) ~name
    ~attribute ~global_secondary_index ~local_secondary_index
    ~replica () : aws_dynamodb_table =
  {
    billing_mode;
    deletion_protection_enabled;
    hash_key;
    id;
    name;
    range_key;
    read_capacity;
    restore_date_time;
    restore_source_name;
    restore_to_latest_time;
    stream_enabled;
    stream_view_type;
    table_class;
    tags;
    tags_all;
    write_capacity;
    attribute;
    global_secondary_index;
    import_table;
    local_secondary_index;
    point_in_time_recovery;
    replica;
    server_side_encryption;
    timeouts;
    ttl;
  }

type t = {
  tf_name : string;
  arn : string prop;
  billing_mode : string prop;
  deletion_protection_enabled : bool prop;
  hash_key : string prop;
  id : string prop;
  name : string prop;
  range_key : string prop;
  read_capacity : float prop;
  restore_date_time : string prop;
  restore_source_name : string prop;
  restore_to_latest_time : bool prop;
  stream_arn : string prop;
  stream_enabled : bool prop;
  stream_label : string prop;
  stream_view_type : string prop;
  table_class : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  write_capacity : float prop;
}

let make ?billing_mode ?deletion_protection_enabled ?hash_key ?id
    ?range_key ?read_capacity ?restore_date_time ?restore_source_name
    ?restore_to_latest_time ?stream_enabled ?stream_view_type
    ?table_class ?tags ?tags_all ?write_capacity ?(import_table = [])
    ?(point_in_time_recovery = []) ?(server_side_encryption = [])
    ?timeouts ?(ttl = []) ~name ~attribute ~global_secondary_index
    ~local_secondary_index ~replica __id =
  let __type = "aws_dynamodb_table" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       billing_mode = Prop.computed __type __id "billing_mode";
       deletion_protection_enabled =
         Prop.computed __type __id "deletion_protection_enabled";
       hash_key = Prop.computed __type __id "hash_key";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       range_key = Prop.computed __type __id "range_key";
       read_capacity = Prop.computed __type __id "read_capacity";
       restore_date_time =
         Prop.computed __type __id "restore_date_time";
       restore_source_name =
         Prop.computed __type __id "restore_source_name";
       restore_to_latest_time =
         Prop.computed __type __id "restore_to_latest_time";
       stream_arn = Prop.computed __type __id "stream_arn";
       stream_enabled = Prop.computed __type __id "stream_enabled";
       stream_label = Prop.computed __type __id "stream_label";
       stream_view_type =
         Prop.computed __type __id "stream_view_type";
       table_class = Prop.computed __type __id "table_class";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       write_capacity = Prop.computed __type __id "write_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table
        (aws_dynamodb_table ?billing_mode
           ?deletion_protection_enabled ?hash_key ?id ?range_key
           ?read_capacity ?restore_date_time ?restore_source_name
           ?restore_to_latest_time ?stream_enabled ?stream_view_type
           ?table_class ?tags ?tags_all ?write_capacity ~import_table
           ~point_in_time_recovery ~server_side_encryption ?timeouts
           ~ttl ~name ~attribute ~global_secondary_index
           ~local_secondary_index ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?billing_mode ?deletion_protection_enabled
    ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
    ?restore_source_name ?restore_to_latest_time ?stream_enabled
    ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
    ?(import_table = []) ?(point_in_time_recovery = [])
    ?(server_side_encryption = []) ?timeouts ?(ttl = []) ~name
    ~attribute ~global_secondary_index ~local_secondary_index
    ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?billing_mode ?deletion_protection_enabled ?hash_key ?id
      ?range_key ?read_capacity ?restore_date_time
      ?restore_source_name ?restore_to_latest_time ?stream_enabled
      ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
      ~import_table ~point_in_time_recovery ~server_side_encryption
      ?timeouts ~ttl ~name ~attribute ~global_secondary_index
      ~local_secondary_index ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
