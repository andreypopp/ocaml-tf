(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_origin_access_identity = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_origin_access_identity *)

type t = {
  caller_reference : string prop;
  cloudfront_access_identity_path : string prop;
  comment : string prop;
  etag : string prop;
  iam_arn : string prop;
  id : string prop;
  s3_canonical_user_id : string prop;
}

let aws_cloudfront_origin_access_identity ?comment ?id __resource_id
    =
  let __resource_type = "aws_cloudfront_origin_access_identity" in
  let __resource =
    ({ comment; id } : aws_cloudfront_origin_access_identity)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_origin_access_identity __resource);
  let __resource_attributes =
    ({
       caller_reference =
         Prop.computed __resource_type __resource_id
           "caller_reference";
       cloudfront_access_identity_path =
         Prop.computed __resource_type __resource_id
           "cloudfront_access_identity_path";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       iam_arn =
         Prop.computed __resource_type __resource_id "iam_arn";
       id = Prop.computed __resource_type __resource_id "id";
       s3_canonical_user_id =
         Prop.computed __resource_type __resource_id
           "s3_canonical_user_id";
     }
      : t)
  in
  __resource_attributes
