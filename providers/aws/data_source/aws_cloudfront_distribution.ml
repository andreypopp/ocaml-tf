(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudfront_distribution = {
  id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_distribution) -> ()

let yojson_of_aws_cloudfront_distribution =
  (function
   | { id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_distribution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_distribution

[@@@deriving.end]

let aws_cloudfront_distribution ?tags ~id () :
    aws_cloudfront_distribution =
  { id; tags }

type t = {
  tf_name : string;
  aliases : string list prop;
  arn : string prop;
  domain_name : string prop;
  enabled : bool prop;
  etag : string prop;
  hosted_zone_id : string prop;
  id : string prop;
  in_progress_validation_batches : float prop;
  last_modified_time : string prop;
  status : string prop;
  tags : (string * string) list prop;
  web_acl_id : string prop;
}

let make ?tags ~id __id =
  let __type = "aws_cloudfront_distribution" in
  let __attrs =
    ({
       tf_name = __id;
       aliases = Prop.computed __type __id "aliases";
       arn = Prop.computed __type __id "arn";
       domain_name = Prop.computed __type __id "domain_name";
       enabled = Prop.computed __type __id "enabled";
       etag = Prop.computed __type __id "etag";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       in_progress_validation_batches =
         Prop.computed __type __id "in_progress_validation_batches";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       web_acl_id = Prop.computed __type __id "web_acl_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_distribution
        (aws_cloudfront_distribution ?tags ~id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~id __id =
  let (r : _ Tf_core.resource) = make ?tags ~id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
