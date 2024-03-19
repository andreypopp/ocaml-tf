(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop;  (** days_after_initiation *)
}
[@@deriving yojson_of]
(** rule__abort_incomplete_multipart_upload *)

type rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** rule__expiration *)

type rule__filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** rule__filter *)

type rule = {
  id : string prop;  (** id *)
  status : string prop option; [@option]  (** status *)
  abort_incomplete_multipart_upload :
    rule__abort_incomplete_multipart_upload list;
  expiration : rule__expiration list;
  filter : rule__filter list;
}
[@@deriving yojson_of]
(** rule *)

type aws_s3control_bucket_lifecycle_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3control_bucket_lifecycle_configuration *)

let rule__abort_incomplete_multipart_upload ~days_after_initiation ()
    : rule__abort_incomplete_multipart_upload =
  { days_after_initiation }

let rule__expiration ?date ?days ?expired_object_delete_marker () :
    rule__expiration =
  { date; days; expired_object_delete_marker }

let rule__filter ?prefix ?tags () : rule__filter = { prefix; tags }

let rule ?status ~id ~abort_incomplete_multipart_upload ~expiration
    ~filter () : rule =
  {
    id;
    status;
    abort_incomplete_multipart_upload;
    expiration;
    filter;
  }

let aws_s3control_bucket_lifecycle_configuration ?id ~bucket ~rule ()
    : aws_s3control_bucket_lifecycle_configuration =
  { bucket; id; rule }

type t = { bucket : string prop; id : string prop }

let register ?tf_module ?id ~bucket ~rule __resource_id =
  let __resource_type =
    "aws_s3control_bucket_lifecycle_configuration"
  in
  let __resource =
    aws_s3control_bucket_lifecycle_configuration ?id ~bucket ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
