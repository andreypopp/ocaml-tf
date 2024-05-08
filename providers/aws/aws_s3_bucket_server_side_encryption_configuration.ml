(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
  sse_algorithm : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__apply_server_side_encryption_by_default) -> ()

let yojson_of_rule__apply_server_side_encryption_by_default =
  (function
   | {
       kms_master_key_id = v_kms_master_key_id;
       sse_algorithm = v_sse_algorithm;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sse_algorithm in
         ("sse_algorithm", arg) :: bnds
       in
       let bnds =
         match v_kms_master_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_master_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__apply_server_side_encryption_by_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__apply_server_side_encryption_by_default

[@@@deriving.end]

type rule = {
  bucket_key_enabled : bool prop option; [@option]
  apply_server_side_encryption_by_default :
    rule__apply_server_side_encryption_by_default list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       bucket_key_enabled = v_bucket_key_enabled;
       apply_server_side_encryption_by_default =
         v_apply_server_side_encryption_by_default;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_apply_server_side_encryption_by_default
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule__apply_server_side_encryption_by_default)
               v_apply_server_side_encryption_by_default
           in
           let bnd =
             "apply_server_side_encryption_by_default", arg
           in
           bnd :: bnds
       in
       let bnds =
         match v_bucket_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bucket_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_s3_bucket_server_side_encryption_configuration = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_s3_bucket_server_side_encryption_configuration) -> ()

let yojson_of_aws_s3_bucket_server_side_encryption_configuration =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
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
    : aws_s3_bucket_server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_server_side_encryption_configuration

[@@@deriving.end]

let rule__apply_server_side_encryption_by_default ?kms_master_key_id
    ~sse_algorithm () : rule__apply_server_side_encryption_by_default
    =
  { kms_master_key_id; sse_algorithm }

let rule ?bucket_key_enabled
    ?(apply_server_side_encryption_by_default = []) () : rule =
  { bucket_key_enabled; apply_server_side_encryption_by_default }

let aws_s3_bucket_server_side_encryption_configuration
    ?expected_bucket_owner ?id ~bucket ~rule () :
    aws_s3_bucket_server_side_encryption_configuration =
  { bucket; expected_bucket_owner; id; rule }

type t = {
  tf_name : string;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~rule __id =
  let __type =
    "aws_s3_bucket_server_side_encryption_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_server_side_encryption_configuration
        (aws_s3_bucket_server_side_encryption_configuration
           ?expected_bucket_owner ?id ~bucket ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~rule __id
    =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
