(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_identity = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_origin_access_identity) -> ()

let yojson_of_aws_cloudfront_origin_access_identity =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_origin_access_identity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_origin_access_identity

[@@@deriving.end]

let aws_cloudfront_origin_access_identity ~id () :
    aws_cloudfront_origin_access_identity =
  { id }

type t = {
  caller_reference : string prop;
  cloudfront_access_identity_path : string prop;
  comment : string prop;
  etag : string prop;
  iam_arn : string prop;
  id : string prop;
  s3_canonical_user_id : string prop;
}

let make ~id __id =
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
        (aws_cloudfront_origin_access_identity ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
