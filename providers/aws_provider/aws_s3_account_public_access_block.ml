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
    ?restrict_public_buckets __resource_id =
  let __resource_type = "aws_s3_account_public_access_block" in
  let __resource =
    {
      account_id;
      block_public_acls;
      block_public_policy;
      id;
      ignore_public_acls;
      restrict_public_buckets;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_account_public_access_block __resource);
  ()
