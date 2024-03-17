(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float option; [@option]
      (** days_after_initiation *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload *)

type aws_s3_bucket_lifecycle_configuration__rule__expiration = {
  date : string option; [@option]  (** date *)
  days : float option; [@option]  (** days *)
  expired_object_delete_marker : bool option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__expiration *)

type aws_s3_bucket_lifecycle_configuration__rule__filter__and = {
  object_size_greater_than : float option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : float option; [@option]
      (** object_size_less_than *)
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter__and *)

type aws_s3_bucket_lifecycle_configuration__rule__filter__tag = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter__tag *)

type aws_s3_bucket_lifecycle_configuration__rule__filter = {
  object_size_greater_than : string option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : string option; [@option]
      (** object_size_less_than *)
  prefix : string option; [@option]  (** prefix *)
  and_ :
    aws_s3_bucket_lifecycle_configuration__rule__filter__and list;
  tag : aws_s3_bucket_lifecycle_configuration__rule__filter__tag list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter *)

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration = {
  newer_noncurrent_versions : string option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float option; [@option]  (** noncurrent_days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration *)

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition = {
  newer_noncurrent_versions : string option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float option; [@option]  (** noncurrent_days *)
  storage_class : string;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition *)

type aws_s3_bucket_lifecycle_configuration__rule__transition = {
  date : string option; [@option]  (** date *)
  days : float option; [@option]  (** days *)
  storage_class : string;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__transition *)

type aws_s3_bucket_lifecycle_configuration__rule = {
  id : string;  (** id *)
  prefix : string option; [@option]  (** prefix *)
  status : string;  (** status *)
  abort_incomplete_multipart_upload :
    aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload
    list;
  expiration :
    aws_s3_bucket_lifecycle_configuration__rule__expiration list;
  filter : aws_s3_bucket_lifecycle_configuration__rule__filter list;
  noncurrent_version_expiration :
    aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration
    list;
  noncurrent_version_transition :
    aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition
    list;
  transition :
    aws_s3_bucket_lifecycle_configuration__rule__transition list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule *)

type aws_s3_bucket_lifecycle_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__timeouts *)

type aws_s3_bucket_lifecycle_configuration = {
  bucket : string;  (** bucket *)
  expected_bucket_owner : string option; [@option]
      (** expected_bucket_owner *)
  rule : aws_s3_bucket_lifecycle_configuration__rule list;
  timeouts : aws_s3_bucket_lifecycle_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration *)

let aws_s3_bucket_lifecycle_configuration ?expected_bucket_owner
    ?timeouts ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_lifecycle_configuration" in
  let __resource =
    { bucket; expected_bucket_owner; rule; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_lifecycle_configuration __resource);
  ()
