(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_object_lock_configuration__rule__default_retention = {
  days : float prop option; [@option]  (** days *)
  mode : string prop option; [@option]  (** mode *)
  years : float prop option; [@option]  (** years *)
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
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  object_lock_enabled : string prop option; [@option]
      (** object_lock_enabled *)
  token : string prop option; [@option]  (** token *)
  rule : aws_s3_bucket_object_lock_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_object_lock_configuration *)

let aws_s3_bucket_object_lock_configuration ?expected_bucket_owner
    ?id ?object_lock_enabled ?token ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_object_lock_configuration" in
  let __resource =
    {
      bucket;
      expected_bucket_owner;
      id;
      object_lock_enabled;
      token;
      rule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_object_lock_configuration __resource);
  ()
