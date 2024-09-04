(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint_configuration = {
  types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint_configuration) -> ()

let yojson_of_endpoint_configuration =
  (function
   | { types = v_types } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_types
           in
           let bnd = "types", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : endpoint_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint_configuration

[@@@deriving.end]

type aws_api_gateway_domain_name = {
  domain_name : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_domain_name) -> ()

let yojson_of_aws_api_gateway_domain_name =
  (function
   | { domain_name = v_domain_name; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_domain_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_domain_name

[@@@deriving.end]

let aws_api_gateway_domain_name ?id ?tags ~domain_name () :
    aws_api_gateway_domain_name =
  { domain_name; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  certificate_arn : string prop;
  certificate_name : string prop;
  certificate_upload_date : string prop;
  cloudfront_domain_name : string prop;
  cloudfront_zone_id : string prop;
  domain_name : string prop;
  endpoint_configuration : endpoint_configuration list prop;
  id : string prop;
  regional_certificate_arn : string prop;
  regional_certificate_name : string prop;
  regional_domain_name : string prop;
  regional_zone_id : string prop;
  security_policy : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?tags ~domain_name __id =
  let __type = "aws_api_gateway_domain_name" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       certificate_upload_date =
         Prop.computed __type __id "certificate_upload_date";
       cloudfront_domain_name =
         Prop.computed __type __id "cloudfront_domain_name";
       cloudfront_zone_id =
         Prop.computed __type __id "cloudfront_zone_id";
       domain_name = Prop.computed __type __id "domain_name";
       endpoint_configuration =
         Prop.computed __type __id "endpoint_configuration";
       id = Prop.computed __type __id "id";
       regional_certificate_arn =
         Prop.computed __type __id "regional_certificate_arn";
       regional_certificate_name =
         Prop.computed __type __id "regional_certificate_name";
       regional_domain_name =
         Prop.computed __type __id "regional_domain_name";
       regional_zone_id =
         Prop.computed __type __id "regional_zone_id";
       security_policy = Prop.computed __type __id "security_policy";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_domain_name
        (aws_api_gateway_domain_name ?id ?tags ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~domain_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~domain_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
