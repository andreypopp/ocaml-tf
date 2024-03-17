(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_versioning__versioning_configuration = {
  mfa_delete : string option; [@option]  (** mfa_delete *)
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_versioning__versioning_configuration *)

type aws_s3_bucket_versioning = {
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  mfa : string option; [@option]  (** mfa *)
  versioning_configuration :
    aws_s3_bucket_versioning__versioning_configuration list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_versioning *)

let aws_s3_bucket_versioning ?expected_bucket_owner ?mfa ~bucket
    ~versioning_configuration __resource_id =
  let __resource_type = "aws_s3_bucket_versioning" in
  let __resource =
    { bucket; expected_bucket_owner; mfa; versioning_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_versioning __resource);
  ()
