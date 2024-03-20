(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~bucket ~rule __id =
  let __type = "aws_s3control_bucket_lifecycle_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_bucket_lifecycle_configuration
        (aws_s3control_bucket_lifecycle_configuration ?id ~bucket
           ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~bucket ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
