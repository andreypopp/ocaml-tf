(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type details__public_access_block = {
  block_public_acls : bool prop option; [@option]
  block_public_policy : bool prop option; [@option]
  ignore_public_acls : bool prop option; [@option]
  restrict_public_buckets : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : details__public_access_block) -> ()

let yojson_of_details__public_access_block =
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
    : details__public_access_block ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details__public_access_block

[@@@deriving.end]

type details__region = {
  bucket : string prop;
  bucket_account_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : details__region) -> ()

let yojson_of_details__region =
  (function
   | { bucket = v_bucket; bucket_account_id = v_bucket_account_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : details__region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details__region

[@@@deriving.end]

type details = {
  name : string prop;
  public_access_block : details__public_access_block list;
  region : details__region list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : details) -> ()

let yojson_of_details =
  (function
   | {
       name = v_name;
       public_access_block = v_public_access_block;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_details__region v_region
         in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_details__public_access_block
             v_public_access_block
         in
         ("public_access_block", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_details

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_s3control_multi_region_access_point = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  details : details list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_multi_region_access_point) -> ()

let yojson_of_aws_s3control_multi_region_access_point =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       details = v_details;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_details v_details in
         ("details", arg) :: bnds
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

let details__public_access_block ?block_public_acls
    ?block_public_policy ?ignore_public_acls ?restrict_public_buckets
    () : details__public_access_block =
  {
    block_public_acls;
    block_public_policy;
    ignore_public_acls;
    restrict_public_buckets;
  }

let details__region ?bucket_account_id ~bucket () : details__region =
  { bucket; bucket_account_id }

let details ?(public_access_block = []) ~name ~region () : details =
  { name; public_access_block; region }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_s3control_multi_region_access_point ?account_id ?id ?timeouts
    ~details () : aws_s3control_multi_region_access_point =
  { account_id; id; details; timeouts }

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  status : string prop;
}

let make ?account_id ?id ?timeouts ~details __id =
  let __type = "aws_s3control_multi_region_access_point" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
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
           ?timeouts ~details ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?timeouts ~details __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?timeouts ~details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
