(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop;  (** days_after_initiation *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload *)

type aws_s3control_bucket_lifecycle_configuration__rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__expiration *)

type aws_s3control_bucket_lifecycle_configuration__rule__filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__filter *)

type aws_s3control_bucket_lifecycle_configuration__rule = {
  id : string prop;  (** id *)
  status : string prop option; [@option]  (** status *)
  abort_incomplete_multipart_upload :
    aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload
    list;
  expiration :
    aws_s3control_bucket_lifecycle_configuration__rule__expiration
    list;
  filter :
    aws_s3control_bucket_lifecycle_configuration__rule__filter list;
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule *)

type aws_s3control_bucket_lifecycle_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  rule : aws_s3control_bucket_lifecycle_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration *)

type t = { bucket : string prop; id : string prop }

let aws_s3control_bucket_lifecycle_configuration ?id ~bucket ~rule
    __resource_id =
  let __resource_type =
    "aws_s3control_bucket_lifecycle_configuration"
  in
  let __resource =
    ({ bucket; id; rule }
      : aws_s3control_bucket_lifecycle_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket_lifecycle_configuration
       __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
