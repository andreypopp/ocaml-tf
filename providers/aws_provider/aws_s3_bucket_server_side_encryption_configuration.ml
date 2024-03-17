(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string prop;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default *)

type aws_s3_bucket_server_side_encryption_configuration__rule = {
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  apply_server_side_encryption_by_default :
    aws_s3_bucket_server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_server_side_encryption_configuration__rule *)

type aws_s3_bucket_server_side_encryption_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  rule :
    aws_s3_bucket_server_side_encryption_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_server_side_encryption_configuration *)

let aws_s3_bucket_server_side_encryption_configuration
    ?expected_bucket_owner ?id ~bucket ~rule __resource_id =
  let __resource_type =
    "aws_s3_bucket_server_side_encryption_configuration"
  in
  let __resource = { bucket; expected_bucket_owner; id; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_server_side_encryption_configuration
       __resource);
  ()
