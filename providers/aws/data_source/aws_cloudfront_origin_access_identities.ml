(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_identities = {
  comments : string prop list option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_origin_access_identities) -> ()

let yojson_of_aws_cloudfront_origin_access_identities =
  (function
   | { comments = v_comments; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "comments", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_origin_access_identities ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_origin_access_identities

[@@@deriving.end]

let aws_cloudfront_origin_access_identities ?comments ?id () :
    aws_cloudfront_origin_access_identities =
  { comments; id }

type t = {
  tf_name : string;
  comments : string list prop;
  iam_arns : string list prop;
  id : string prop;
  ids : string list prop;
  s3_canonical_user_ids : string list prop;
}

let make ?comments ?id __id =
  let __type = "aws_cloudfront_origin_access_identities" in
  let __attrs =
    ({
       tf_name = __id;
       comments = Prop.computed __type __id "comments";
       iam_arns = Prop.computed __type __id "iam_arns";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       s3_canonical_user_ids =
         Prop.computed __type __id "s3_canonical_user_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_access_identities
        (aws_cloudfront_origin_access_identities ?comments ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?comments ?id __id =
  let (r : _ Tf_core.resource) = make ?comments ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
