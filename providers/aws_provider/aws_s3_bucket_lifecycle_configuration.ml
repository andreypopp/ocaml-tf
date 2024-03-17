(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop option; [@option]
      (** days_after_initiation *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload *)

type aws_s3_bucket_lifecycle_configuration__rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__expiration *)

type aws_s3_bucket_lifecycle_configuration__rule__filter__and = {
  object_size_greater_than : float prop option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : float prop option; [@option]
      (** object_size_less_than *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter__and *)

type aws_s3_bucket_lifecycle_configuration__rule__filter__tag = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter__tag *)

type aws_s3_bucket_lifecycle_configuration__rule__filter = {
  object_size_greater_than : string prop option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : string prop option; [@option]
      (** object_size_less_than *)
  prefix : string prop option; [@option]  (** prefix *)
  and_ :
    aws_s3_bucket_lifecycle_configuration__rule__filter__and list;
  tag : aws_s3_bucket_lifecycle_configuration__rule__filter__tag list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__filter *)

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration = {
  newer_noncurrent_versions : string prop option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float prop option; [@option]
      (** noncurrent_days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_expiration *)

type aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition = {
  newer_noncurrent_versions : string prop option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float prop option; [@option]
      (** noncurrent_days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__noncurrent_version_transition *)

type aws_s3_bucket_lifecycle_configuration__rule__transition = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__rule__transition *)

type aws_s3_bucket_lifecycle_configuration__rule = {
  id : string prop;  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  status : string prop;  (** status *)
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
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration__timeouts *)

type aws_s3_bucket_lifecycle_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  rule : aws_s3_bucket_lifecycle_configuration__rule list;
  timeouts : aws_s3_bucket_lifecycle_configuration__timeouts option;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration *)

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let aws_s3_bucket_lifecycle_configuration ?expected_bucket_owner ?id
    ?timeouts ~bucket ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_lifecycle_configuration" in
  let __resource =
    ({ bucket; expected_bucket_owner; id; rule; timeouts }
      : aws_s3_bucket_lifecycle_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_lifecycle_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       expected_bucket_owner =
         Prop.computed __resource_type __resource_id
           "expected_bucket_owner";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
