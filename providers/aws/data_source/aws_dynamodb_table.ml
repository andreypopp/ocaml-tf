(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_side_encryption = unit [@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption) -> ()

let yojson_of_server_side_encryption =
  (yojson_of_unit
    : server_side_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption

[@@@deriving.end]

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
  non_key_attributes : string prop list;
  projection_type : string prop;
  range_key : string prop;
  read_capacity : float prop;
  write_capacity : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_write_capacity in
         ("write_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_read_capacity in
         ("read_capacity", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_non_key_attributes
         in
         ("non_key_attributes", arg) :: bnds
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

type local_secondary_index = {
  name : string prop;
  non_key_attributes : string prop list;
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_non_key_attributes
         in
         ("non_key_attributes", arg) :: bnds
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
  kms_key_arn : string prop;
  region_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | { kms_key_arn = v_kms_key_arn; region_name = v_region_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

[@@@deriving.end]

type ttl = { attribute_name : string prop; enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ttl) -> ()

let yojson_of_ttl =
  (function
   | { attribute_name = v_attribute_name; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attribute_name
         in
         ("attribute_name", arg) :: bnds
       in
       `Assoc bnds
    : ttl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ttl

[@@@deriving.end]

type aws_dynamodb_table = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  server_side_encryption : server_side_encryption list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table) -> ()

let yojson_of_aws_dynamodb_table =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       server_side_encryption = v_server_side_encryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_server_side_encryption
             v_server_side_encryption
         in
         ("server_side_encryption", arg) :: bnds
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
       `Assoc bnds
    : aws_dynamodb_table -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table

[@@@deriving.end]

let server_side_encryption () = ()

let aws_dynamodb_table ?id ?tags ?(server_side_encryption = []) ~name
    () : aws_dynamodb_table =
  { id; name; tags; server_side_encryption }

type t = {
  arn : string prop;
  attribute : attribute list prop;
  billing_mode : string prop;
  deletion_protection_enabled : bool prop;
  global_secondary_index : global_secondary_index list prop;
  hash_key : string prop;
  id : string prop;
  local_secondary_index : local_secondary_index list prop;
  name : string prop;
  point_in_time_recovery : point_in_time_recovery list prop;
  range_key : string prop;
  read_capacity : float prop;
  replica : replica list prop;
  stream_arn : string prop;
  stream_enabled : bool prop;
  stream_label : string prop;
  stream_view_type : string prop;
  table_class : string prop;
  tags : (string * string) list prop;
  ttl : ttl list prop;
  write_capacity : float prop;
}

let make ?id ?tags ?(server_side_encryption = []) ~name __id =
  let __type = "aws_dynamodb_table" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attribute = Prop.computed __type __id "attribute";
       billing_mode = Prop.computed __type __id "billing_mode";
       deletion_protection_enabled =
         Prop.computed __type __id "deletion_protection_enabled";
       global_secondary_index =
         Prop.computed __type __id "global_secondary_index";
       hash_key = Prop.computed __type __id "hash_key";
       id = Prop.computed __type __id "id";
       local_secondary_index =
         Prop.computed __type __id "local_secondary_index";
       name = Prop.computed __type __id "name";
       point_in_time_recovery =
         Prop.computed __type __id "point_in_time_recovery";
       range_key = Prop.computed __type __id "range_key";
       read_capacity = Prop.computed __type __id "read_capacity";
       replica = Prop.computed __type __id "replica";
       stream_arn = Prop.computed __type __id "stream_arn";
       stream_enabled = Prop.computed __type __id "stream_enabled";
       stream_label = Prop.computed __type __id "stream_label";
       stream_view_type =
         Prop.computed __type __id "stream_view_type";
       table_class = Prop.computed __type __id "table_class";
       tags = Prop.computed __type __id "tags";
       ttl = Prop.computed __type __id "ttl";
       write_capacity = Prop.computed __type __id "write_capacity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table
        (aws_dynamodb_table ?id ?tags ~server_side_encryption ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(server_side_encryption = [])
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~server_side_encryption ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
