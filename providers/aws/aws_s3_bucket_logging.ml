(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_grant__grantee = {
  email_address : string prop option; [@option]
  id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_grant__grantee) -> ()

let yojson_of_target_grant__grantee =
  (function
   | {
       email_address = v_email_address;
       id = v_id;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target_grant__grantee -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_grant__grantee

[@@@deriving.end]

type target_grant = {
  permission : string prop;
  grantee : target_grant__grantee list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_grant) -> ()

let yojson_of_target_grant =
  (function
   | { permission = v_permission; grantee = v_grantee } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_grant__grantee v_grantee
         in
         ("grantee", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       `Assoc bnds
    : target_grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_grant

[@@@deriving.end]

type target_object_key_format__partitioned_prefix = {
  partition_date_source : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_object_key_format__partitioned_prefix) -> ()

let yojson_of_target_object_key_format__partitioned_prefix =
  (function
   | { partition_date_source = v_partition_date_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partition_date_source
         in
         ("partition_date_source", arg) :: bnds
       in
       `Assoc bnds
    : target_object_key_format__partitioned_prefix ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_object_key_format__partitioned_prefix

[@@@deriving.end]

type target_object_key_format__simple_prefix = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : target_object_key_format__simple_prefix) -> ()

let yojson_of_target_object_key_format__simple_prefix =
  (yojson_of_unit
    : target_object_key_format__simple_prefix ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_object_key_format__simple_prefix

[@@@deriving.end]

type target_object_key_format = {
  partitioned_prefix :
    target_object_key_format__partitioned_prefix list;
  simple_prefix : target_object_key_format__simple_prefix list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target_object_key_format) -> ()

let yojson_of_target_object_key_format =
  (function
   | {
       partitioned_prefix = v_partitioned_prefix;
       simple_prefix = v_simple_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_object_key_format__simple_prefix
             v_simple_prefix
         in
         ("simple_prefix", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_target_object_key_format__partitioned_prefix
             v_partitioned_prefix
         in
         ("partitioned_prefix", arg) :: bnds
       in
       `Assoc bnds
    : target_object_key_format -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target_object_key_format

[@@@deriving.end]

type aws_s3_bucket_logging = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  target_bucket : string prop;
  target_prefix : string prop;
  target_grant : target_grant list;
  target_object_key_format : target_object_key_format list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_logging) -> ()

let yojson_of_aws_s3_bucket_logging =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       target_bucket = v_target_bucket;
       target_prefix = v_target_prefix;
       target_grant = v_target_grant;
       target_object_key_format = v_target_object_key_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_object_key_format
             v_target_object_key_format
         in
         ("target_object_key_format", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target_grant v_target_grant
         in
         ("target_grant", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_prefix in
         ("target_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_bucket in
         ("target_bucket", arg) :: bnds
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_logging

[@@@deriving.end]

let target_grant__grantee ?email_address ?id ?uri ~type_ () :
    target_grant__grantee =
  { email_address; id; type_; uri }

let target_grant ~permission ~grantee () : target_grant =
  { permission; grantee }

let target_object_key_format__partitioned_prefix
    ~partition_date_source () :
    target_object_key_format__partitioned_prefix =
  { partition_date_source }

let target_object_key_format__simple_prefix () = ()

let target_object_key_format ~partitioned_prefix ~simple_prefix () :
    target_object_key_format =
  { partitioned_prefix; simple_prefix }

let aws_s3_bucket_logging ?expected_bucket_owner ?id ~bucket
    ~target_bucket ~target_prefix ~target_grant
    ~target_object_key_format () : aws_s3_bucket_logging =
  {
    bucket;
    expected_bucket_owner;
    id;
    target_bucket;
    target_prefix;
    target_grant;
    target_object_key_format;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  target_bucket : string prop;
  target_prefix : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~target_bucket
    ~target_prefix ~target_grant ~target_object_key_format __id =
  let __type = "aws_s3_bucket_logging" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       target_bucket = Prop.computed __type __id "target_bucket";
       target_prefix = Prop.computed __type __id "target_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_logging
        (aws_s3_bucket_logging ?expected_bucket_owner ?id ~bucket
           ~target_bucket ~target_prefix ~target_grant
           ~target_object_key_format ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket
    ~target_bucket ~target_prefix ~target_grant
    ~target_object_key_format __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~target_bucket
      ~target_prefix ~target_grant ~target_object_key_format __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
