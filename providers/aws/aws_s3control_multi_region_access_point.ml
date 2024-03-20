(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type details__public_access_block = {
  block_public_acls : bool prop option; [@option]
      (** block_public_acls *)
  block_public_policy : bool prop option; [@option]
      (** block_public_policy *)
  ignore_public_acls : bool prop option; [@option]
      (** ignore_public_acls *)
  restrict_public_buckets : bool prop option; [@option]
      (** restrict_public_buckets *)
}
[@@deriving yojson_of]
(** details__public_access_block *)

type details__region = {
  bucket : string prop;  (** bucket *)
  bucket_account_id : string prop option; [@option]
      (** bucket_account_id *)
}
[@@deriving yojson_of]
(** details__region *)

type details = {
  name : string prop;  (** name *)
  public_access_block : details__public_access_block list;
  region : details__region list;
}
[@@deriving yojson_of]
(** details *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_s3control_multi_region_access_point = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  details : details list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point *)

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

let details ~name ~public_access_block ~region () : details =
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
