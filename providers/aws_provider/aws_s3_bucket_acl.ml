(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3_bucket_acl__access_control_policy__grant__grantee = {
  display_name : string;  (** display_name *)
  email_address : string option; [@option]  (** email_address *)
  id : string option; [@option]  (** id *)
  type_ : string; [@key "type"]  (** type *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl__access_control_policy__grant__grantee *)

type aws_s3_bucket_acl__access_control_policy__grant = {
  permission : string;  (** permission *)
  grantee :
    aws_s3_bucket_acl__access_control_policy__grant__grantee list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl__access_control_policy__grant *)

type aws_s3_bucket_acl__access_control_policy__owner = {
  display_name : string option; [@option]  (** display_name *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl__access_control_policy__owner *)

type aws_s3_bucket_acl__access_control_policy = {
  grant : aws_s3_bucket_acl__access_control_policy__grant list;
  owner : aws_s3_bucket_acl__access_control_policy__owner list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl__access_control_policy *)

type aws_s3_bucket_acl = {
  acl : string option; [@option]  (** acl *)
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  access_control_policy :
    aws_s3_bucket_acl__access_control_policy list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_acl *)

let aws_s3_bucket_acl ?acl ?expected_bucket_owner ~bucket
    ~access_control_policy __resource_id =
  let __resource_type = "aws_s3_bucket_acl" in
  let __resource =
    { acl; bucket; expected_bucket_owner; access_control_policy }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_acl __resource);
  ()