(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_origin_access_control = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_origin_access_control) -> ()

let yojson_of_aws_cloudfront_origin_access_control =
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
    : aws_cloudfront_origin_access_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_origin_access_control

[@@@deriving.end]

let aws_cloudfront_origin_access_control ~id () :
    aws_cloudfront_origin_access_control =
  { id }

type t = {
  tf_name : string;
  description : string prop;
  etag : string prop;
  id : string prop;
  name : string prop;
  origin_access_control_origin_type : string prop;
  signing_behavior : string prop;
  signing_protocol : string prop;
}

let make ~id __id =
  let __type = "aws_cloudfront_origin_access_control" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin_access_control_origin_type =
         Prop.computed __type __id
           "origin_access_control_origin_type";
       signing_behavior =
         Prop.computed __type __id "signing_behavior";
       signing_protocol =
         Prop.computed __type __id "signing_protocol";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_origin_access_control
        (aws_cloudfront_origin_access_control ~id ());
    attrs = __attrs;
  }

let register ?tf_module ~id __id =
  let (r : _ Tf_core.resource) = make ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
