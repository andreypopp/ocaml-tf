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

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  object_lock_enabled : string prop;
  token : string prop;
}

let aws_s3_bucket_object_lock_configuration ?expected_bucket_owner
    ?id ?object_lock_enabled ?token ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_object_lock_configuration" in
  let __resource =
    ({
       bucket;
       expected_bucket_owner;
       id;
       object_lock_enabled;
       token;
       rule;
     }
      : aws_s3_bucket_object_lock_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_object_lock_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
       object_lock_enabled =
         Prop.computed __resource_type __resource_id
           "object_lock_enabled";
       token = Prop.computed __resource_type __resource_id "token";
     }
      : t)
  in
  __resource_attributes
