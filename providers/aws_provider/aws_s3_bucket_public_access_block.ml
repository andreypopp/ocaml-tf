(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_public_access_block = {
  block_public_acls : bool option; [@option]
      (** block_public_acls *)
  block_public_policy : bool option; [@option]
      (** block_public_policy *)
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  ignore_public_acls : bool option; [@option]
      (** ignore_public_acls *)
  restrict_public_buckets : bool option; [@option]
      (** restrict_public_buckets *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_public_access_block *)

let aws_s3_bucket_public_access_block ?block_public_acls
    ?block_public_policy ?id ?ignore_public_acls
    ?restrict_public_buckets ~bucket __resource_id =
  let __resource_type = "aws_s3_bucket_public_access_block" in
  let __resource =
    {
      block_public_acls;
      block_public_policy;
      bucket;
      id;
      ignore_public_acls;
      restrict_public_buckets;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_public_access_block __resource);
  ()
