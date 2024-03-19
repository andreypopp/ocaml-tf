(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?account_id ?block_public_acls
    ?block_public_policy ?id ?ignore_public_acls
    ?restrict_public_buckets __resource_id =
  let __resource_type = "aws_s3_account_public_access_block" in
  let __resource =
    aws_s3_account_public_access_block ?account_id ?block_public_acls
      ?block_public_policy ?id ?ignore_public_acls
      ?restrict_public_buckets ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_account_public_access_block __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       block_public_acls =
         Prop.computed __resource_type __resource_id
           "block_public_acls";
       block_public_policy =
         Prop.computed __resource_type __resource_id
           "block_public_policy";
       id = Prop.computed __resource_type __resource_id "id";
       ignore_public_acls =
         Prop.computed __resource_type __resource_id
           "ignore_public_acls";
       restrict_public_buckets =
         Prop.computed __resource_type __resource_id
           "restrict_public_buckets";
     }
      : t)
  in
  __resource_attributes
