(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type public_access_block = {
  block_public_acls : bool prop;
  block_public_policy : bool prop;
  ignore_public_acls : bool prop;
  restrict_public_buckets : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_access_block) -> ()

let yojson_of_public_access_block =
  (function
   | {
       block_public_acls = v_block_public_acls;
       block_public_policy = v_block_public_policy;
       ignore_public_acls = v_ignore_public_acls;
       restrict_public_buckets = v_restrict_public_buckets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_restrict_public_buckets
         in
         ("restrict_public_buckets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_ignore_public_acls
         in
         ("ignore_public_acls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_block_public_policy
         in
         ("block_public_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_block_public_acls
         in
         ("block_public_acls", arg) :: bnds
       in
       `Assoc bnds
    : public_access_block -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_access_block

[@@@deriving.end]

type regions = {
  bucket : string prop;
  bucket_account_id : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : regions) -> ()

let yojson_of_regions =
  (function
   | {
       bucket = v_bucket;
       bucket_account_id = v_bucket_account_id;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_bucket_account_id
         in
         ("bucket_account_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : regions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_regions

[@@@deriving.end]

type aws_s3control_multi_region_access_point = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_multi_region_access_point) -> ()

let yojson_of_aws_s3control_multi_region_access_point =
  (function
   | { account_id = v_account_id; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_multi_region_access_point ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_multi_region_access_point

[@@@deriving.end]

let aws_s3control_multi_region_access_point ?account_id ?id ~name ()
    : aws_s3control_multi_region_access_point =
  { account_id; id; name }

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  created_at : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  public_access_block : public_access_block list prop;
  regions : regions list prop;
  status : string prop;
}

let make ?account_id ?id ~name __id =
  let __type = "aws_s3control_multi_region_access_point" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       public_access_block =
         Prop.computed __type __id "public_access_block";
       regions = Prop.computed __type __id "regions";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_multi_region_access_point
        (aws_s3control_multi_region_access_point ?account_id ?id
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?account_id ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
