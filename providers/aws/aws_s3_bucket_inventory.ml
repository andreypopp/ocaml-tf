(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination__bucket__encryption__sse_kms = {
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__bucket__encryption__sse_kms) -> ()

let yojson_of_destination__bucket__encryption__sse_kms =
  (function
   | { key_id = v_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
       in
       `Assoc bnds
    : destination__bucket__encryption__sse_kms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__bucket__encryption__sse_kms

[@@@deriving.end]

type destination__bucket__encryption__sse_s3 = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__bucket__encryption__sse_s3) -> ()

let yojson_of_destination__bucket__encryption__sse_s3 =
  (yojson_of_unit
    : destination__bucket__encryption__sse_s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__bucket__encryption__sse_s3

[@@@deriving.end]

type destination__bucket__encryption = {
  sse_kms : destination__bucket__encryption__sse_kms list;
  sse_s3 : destination__bucket__encryption__sse_s3 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__bucket__encryption) -> ()

let yojson_of_destination__bucket__encryption =
  (function
   | { sse_kms = v_sse_kms; sse_s3 = v_sse_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination__bucket__encryption__sse_s3
             v_sse_s3
         in
         ("sse_s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_destination__bucket__encryption__sse_kms
             v_sse_kms
         in
         ("sse_kms", arg) :: bnds
       in
       `Assoc bnds
    : destination__bucket__encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__bucket__encryption

[@@@deriving.end]

type destination__bucket = {
  account_id : string prop option; [@option]
  bucket_arn : string prop;
  format : string prop;
  prefix : string prop option; [@option]
  encryption : destination__bucket__encryption list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__bucket) -> ()

let yojson_of_destination__bucket =
  (function
   | {
       account_id = v_account_id;
       bucket_arn = v_bucket_arn;
       format = v_format;
       prefix = v_prefix;
       encryption = v_encryption;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination__bucket__encryption
             v_encryption
         in
         ("encryption", arg) :: bnds
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination__bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__bucket

[@@@deriving.end]

type destination = { bucket : destination__bucket list }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | { bucket = v_bucket } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination__bucket v_bucket
         in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type filter = { prefix : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type schedule = { frequency : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : schedule) -> ()

let yojson_of_schedule =
  (function
   | { frequency = v_frequency } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_frequency in
         ("frequency", arg) :: bnds
       in
       `Assoc bnds
    : schedule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schedule

[@@@deriving.end]

type aws_s3_bucket_inventory = {
  bucket : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  included_object_versions : string prop;
  name : string prop;
  optional_fields : string prop list option; [@option]
  destination : destination list;
  filter : filter list;
  schedule : schedule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_inventory) -> ()

let yojson_of_aws_s3_bucket_inventory =
  (function
   | {
       bucket = v_bucket;
       enabled = v_enabled;
       id = v_id;
       included_object_versions = v_included_object_versions;
       name = v_name;
       optional_fields = v_optional_fields;
       destination = v_destination;
       filter = v_filter;
       schedule = v_schedule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_schedule v_schedule in
         ("schedule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination v_destination
         in
         ("destination", arg) :: bnds
       in
       let bnds =
         match v_optional_fields with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "optional_fields", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_included_object_versions
         in
         ("included_object_versions", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_inventory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_inventory

[@@@deriving.end]

let destination__bucket__encryption__sse_kms ~key_id () :
    destination__bucket__encryption__sse_kms =
  { key_id }

let destination__bucket__encryption__sse_s3 () = ()

let destination__bucket__encryption ?(sse_kms = []) ?(sse_s3 = []) ()
    : destination__bucket__encryption =
  { sse_kms; sse_s3 }

let destination__bucket ?account_id ?prefix ?(encryption = [])
    ~bucket_arn ~format () : destination__bucket =
  { account_id; bucket_arn; format; prefix; encryption }

let destination ~bucket () : destination = { bucket }
let filter ?prefix () : filter = { prefix }
let schedule ~frequency () : schedule = { frequency }

let aws_s3_bucket_inventory ?enabled ?id ?optional_fields
    ?(filter = []) ~bucket ~included_object_versions ~name
    ~destination ~schedule () : aws_s3_bucket_inventory =
  {
    bucket;
    enabled;
    id;
    included_object_versions;
    name;
    optional_fields;
    destination;
    filter;
    schedule;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  enabled : bool prop;
  id : string prop;
  included_object_versions : string prop;
  name : string prop;
  optional_fields : string list prop;
}

let make ?enabled ?id ?optional_fields ?(filter = []) ~bucket
    ~included_object_versions ~name ~destination ~schedule __id =
  let __type = "aws_s3_bucket_inventory" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       included_object_versions =
         Prop.computed __type __id "included_object_versions";
       name = Prop.computed __type __id "name";
       optional_fields = Prop.computed __type __id "optional_fields";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_inventory
        (aws_s3_bucket_inventory ?enabled ?id ?optional_fields
           ~filter ~bucket ~included_object_versions ~name
           ~destination ~schedule ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?optional_fields ?(filter = [])
    ~bucket ~included_object_versions ~name ~destination ~schedule
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?optional_fields ~filter ~bucket
      ~included_object_versions ~name ~destination ~schedule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
