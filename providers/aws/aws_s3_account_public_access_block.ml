(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_account_public_access_block = {
  account_id : string prop option; [@option]  (** account_id *)
  block_public_acls : bool prop option; [@option]
      (** block_public_acls *)
  block_public_policy : bool prop option; [@option]
      (** block_public_policy *)
  id : string prop option; [@option]  (** id *)
  ignore_public_acls : bool prop option; [@option]
      (** ignore_public_acls *)
  restrict_public_buckets : bool prop option; [@option]
      (** restrict_public_buckets *)
}
[@@deriving yojson_of]
(** aws_s3_account_public_access_block *)

let aws_s3_account_public_access_block ?account_id ?block_public_acls
    ?block_public_policy ?id ?ignore_public_acls
    ?restrict_public_buckets () : aws_s3_account_public_access_block
    =
  {
    account_id;
    block_public_acls;
    block_public_policy;
    id;
    ignore_public_acls;
    restrict_public_buckets;
  }

type t = {
  account_id : string prop;
  block_public_acls : bool prop;
  block_public_policy : bool prop;
  id : string prop;
  ignore_public_acls : bool prop;
  restrict_public_buckets : bool prop;
}

let make ?account_id ?block_public_acls ?block_public_policy ?id
    ?ignore_public_acls ?restrict_public_buckets __id =
  let __type = "aws_s3_account_public_access_block" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       block_public_acls =
         Prop.computed __type __id "block_public_acls";
       block_public_policy =
         Prop.computed __type __id "block_public_policy";
       id = Prop.computed __type __id "id";
       ignore_public_acls =
         Prop.computed __type __id "ignore_public_acls";
       restrict_public_buckets =
         Prop.computed __type __id "restrict_public_buckets";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_account_public_access_block
        (aws_s3_account_public_access_block ?account_id
           ?block_public_acls ?block_public_policy ?id
           ?ignore_public_acls ?restrict_public_buckets ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?block_public_acls
    ?block_public_policy ?id ?ignore_public_acls
    ?restrict_public_buckets __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?block_public_acls ?block_public_policy ?id
      ?ignore_public_acls ?restrict_public_buckets __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
