(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float;  (** days_after_initiation *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__abort_incomplete_multipart_upload *)

type aws_s3control_bucket_lifecycle_configuration__rule__expiration = {
  date : string option; [@option]  (** date *)
  days : float option; [@option]  (** days *)
  expired_object_delete_marker : bool option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__expiration *)

type aws_s3control_bucket_lifecycle_configuration__rule__filter = {
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration__rule__filter *)

type aws_s3control_bucket_lifecycle_configuration__rule = {
  id : string;  (** id *)
  status : string option; [@option]  (** status *)
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
  bucket : string;  (** bucket *)
  rule : aws_s3control_bucket_lifecycle_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration *)

let aws_s3control_bucket_lifecycle_configuration ~bucket ~rule
    __resource_id =
  let __resource_type =
    "aws_s3control_bucket_lifecycle_configuration"
  in
  let __resource = { bucket; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_bucket_lifecycle_configuration
       __resource);
  ()