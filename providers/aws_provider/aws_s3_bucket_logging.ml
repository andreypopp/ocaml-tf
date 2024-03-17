(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_logging__target_grant__grantee = {
  display_name : string;  (** display_name *)
  email_address : string option; [@option]  (** email_address *)
  id : string option; [@option]  (** id *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging__target_grant__grantee *)

type aws_s3_bucket_logging__target_grant = {
  permission : string;  (** permission *)
  grantee : aws_s3_bucket_logging__target_grant__grantee list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging__target_grant *)

type aws_s3_bucket_logging__target_object_key_format__partitioned_prefix = {
  partition_date_source : string;  (** partition_date_source *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging__target_object_key_format__partitioned_prefix *)

type aws_s3_bucket_logging__target_object_key_format__simple_prefix =
  unit
[@@deriving yojson_of]

type aws_s3_bucket_logging__target_object_key_format = {
  partitioned_prefix :
    aws_s3_bucket_logging__target_object_key_format__partitioned_prefix
    list;
  simple_prefix :
    aws_s3_bucket_logging__target_object_key_format__simple_prefix
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging__target_object_key_format *)

type aws_s3_bucket_logging = {
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  id : string option; [@option]  (** id *)
  target_bucket : string;  (** target_bucket *)
  target_prefix : string;  (** target_prefix *)
  target_grant : aws_s3_bucket_logging__target_grant list;
  target_object_key_format :
    aws_s3_bucket_logging__target_object_key_format list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging *)

let aws_s3_bucket_logging ?expected_bucket_owner ?id ~bucket
    ~target_bucket ~target_prefix ~target_grant
    ~target_object_key_format __resource_id =
  let __resource_type = "aws_s3_bucket_logging" in
  let __resource =
    {
      bucket;
      expected_bucket_owner;
      id;
      target_bucket;
      target_prefix;
      target_grant;
      target_object_key_format;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_logging __resource);
  ()
