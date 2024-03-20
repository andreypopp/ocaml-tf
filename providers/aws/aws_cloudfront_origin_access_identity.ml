(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_identity = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_identity *)

let aws_cloudfront_origin_access_identity ?comment ?id () :
    aws_cloudfront_origin_access_identity =
  { comment; id }

type t = {
  caller_reference : string prop;
  cloudfront_access_identity_path : string prop;
  comment : string prop;
  etag : string prop;
  iam_arn : string prop;
  id : string prop;
  s3_canonical_user_id : string prop;
}

let make ?comment ?id __id =
  let __type = "aws_cloudfront_origin_access_identity" in
  let __attrs =
    ({
       caller_reference =
         Prop.computed __type __id "caller_reference";
       cloudfront_access_identity_path =
         Prop.computed __type __id "cloudfront_access_identity_path";
       comment = Prop.computed __type __id "comment";
       etag = Prop.computed __type __id "etag";
       iam_arn = Prop.computed __type __id "iam_arn";
       id = Prop.computed __type __id "id";
       s3_canonical_user_id =
         Prop.computed __type __id "s3_canonical_user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_access_identity
        (aws_cloudfront_origin_access_identity ?comment ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?id __id =
  let (r : _ Tf_core.resource) = make ?comment ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
