(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type public_access_block_configuration = {
  block_public_acls : bool prop option; [@option]
  block_public_policy : bool prop option; [@option]
  ignore_public_acls : bool prop option; [@option]
  restrict_public_buckets : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : public_access_block_configuration) -> ()

let yojson_of_public_access_block_configuration =
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
         match v_restrict_public_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "restrict_public_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_public_acls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_public_acls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_public_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "block_public_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_public_acls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "block_public_acls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : public_access_block_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_public_access_block_configuration

[@@@deriving.end]

type vpc_configuration = { vpc_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_configuration) -> ()

let yojson_of_vpc_configuration =
  (function
   | { vpc_id = v_vpc_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       `Assoc bnds
    : vpc_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_configuration

[@@@deriving.end]

type aws_s3_access_point = {
  account_id : string prop option; [@option]
  bucket : string prop;
  bucket_account_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  policy : string prop option; [@option]
  public_access_block_configuration :
    public_access_block_configuration list;
  vpc_configuration : vpc_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_access_point) -> ()

let yojson_of_aws_s3_access_point =
  (function
   | {
       account_id = v_account_id;
       bucket = v_bucket;
       bucket_account_id = v_bucket_account_id;
       id = v_id;
       name = v_name;
       policy = v_policy;
       public_access_block_configuration =
         v_public_access_block_configuration;
       vpc_configuration = v_vpc_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_configuration
             v_vpc_configuration
         in
         ("vpc_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_public_access_block_configuration
             v_public_access_block_configuration
         in
         ("public_access_block_configuration", arg) :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
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
         match v_bucket_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
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
    : aws_s3_access_point -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_access_point

[@@@deriving.end]

let public_access_block_configuration ?block_public_acls
    ?block_public_policy ?ignore_public_acls ?restrict_public_buckets
    () : public_access_block_configuration =
  {
    block_public_acls;
    block_public_policy;
    ignore_public_acls;
    restrict_public_buckets;
  }

let vpc_configuration ~vpc_id () : vpc_configuration = { vpc_id }

let aws_s3_access_point ?account_id ?bucket_account_id ?id ?policy
    ?(public_access_block_configuration = [])
    ?(vpc_configuration = []) ~bucket ~name () : aws_s3_access_point
    =
  {
    account_id;
    bucket;
    bucket_account_id;
    id;
    name;
    policy;
    public_access_block_configuration;
    vpc_configuration;
  }

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_account_id : string prop;
  domain_name : string prop;
  endpoints : (string * string) list prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  network_origin : string prop;
  policy : string prop;
}

let make ?account_id ?bucket_account_id ?id ?policy
    ?(public_access_block_configuration = [])
    ?(vpc_configuration = []) ~bucket ~name __id =
  let __type = "aws_s3_access_point" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_account_id =
         Prop.computed __type __id "bucket_account_id";
       domain_name = Prop.computed __type __id "domain_name";
       endpoints = Prop.computed __type __id "endpoints";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_origin = Prop.computed __type __id "network_origin";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_access_point
        (aws_s3_access_point ?account_id ?bucket_account_id ?id
           ?policy ~public_access_block_configuration
           ~vpc_configuration ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?bucket_account_id ?id ?policy
    ?(public_access_block_configuration = [])
    ?(vpc_configuration = []) ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?bucket_account_id ?id ?policy
      ~public_access_block_configuration ~vpc_configuration ~bucket
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
