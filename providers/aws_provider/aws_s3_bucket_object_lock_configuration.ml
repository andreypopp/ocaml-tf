(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3_bucket_object_lock_configuration__rule__default_retention = {
  days : float option; [@option]  (** days *)
  mode : string option; [@option]  (** mode *)
  years : float option; [@option]  (** years *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_object_lock_configuration__rule__default_retention *)

type aws_s3_bucket_object_lock_configuration__rule = {
  default_retention :
    aws_s3_bucket_object_lock_configuration__rule__default_retention
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_object_lock_configuration__rule *)

type aws_s3_bucket_object_lock_configuration = {
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  object_lock_enabled : string option; [@option]
      (** object_lock_enabled *)
  token : string option; [@option]  (** token *)
  rule : aws_s3_bucket_object_lock_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_object_lock_configuration *)

let aws_s3_bucket_object_lock_configuration ?expected_bucket_owner
    ?object_lock_enabled ?token ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_object_lock_configuration" in
  let __resource =
    {
      bucket;
      expected_bucket_owner;
      object_lock_enabled;
      token;
      rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_object_lock_configuration __resource);
  ()
