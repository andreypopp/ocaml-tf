(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_pool_domain = {
  certificate_arn : string prop option; [@option]
  domain : string prop;
  id : string prop option; [@option]
  user_pool_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cognito_user_pool_domain) -> ()

let yojson_of_aws_cognito_user_pool_domain =
  (function
   | {
       certificate_arn = v_certificate_arn;
       domain = v_domain;
       id = v_id;
       user_pool_id = v_user_pool_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool_id in
         ("user_pool_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         match v_certificate_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cognito_user_pool_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cognito_user_pool_domain

[@@@deriving.end]

let aws_cognito_user_pool_domain ?certificate_arn ?id ~domain
    ~user_pool_id () : aws_cognito_user_pool_domain =
  { certificate_arn; domain; id; user_pool_id }

type t = {
  tf_name : string;
  aws_account_id : string prop;
  certificate_arn : string prop;
  cloudfront_distribution : string prop;
  cloudfront_distribution_arn : string prop;
  cloudfront_distribution_zone_id : string prop;
  domain : string prop;
  id : string prop;
  s3_bucket : string prop;
  user_pool_id : string prop;
  version : string prop;
}

let make ?certificate_arn ?id ~domain ~user_pool_id __id =
  let __type = "aws_cognito_user_pool_domain" in
  let __attrs =
    ({
       tf_name = __id;
       aws_account_id = Prop.computed __type __id "aws_account_id";
       certificate_arn = Prop.computed __type __id "certificate_arn";
       cloudfront_distribution =
         Prop.computed __type __id "cloudfront_distribution";
       cloudfront_distribution_arn =
         Prop.computed __type __id "cloudfront_distribution_arn";
       cloudfront_distribution_zone_id =
         Prop.computed __type __id "cloudfront_distribution_zone_id";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       user_pool_id = Prop.computed __type __id "user_pool_id";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cognito_user_pool_domain
        (aws_cognito_user_pool_domain ?certificate_arn ?id ~domain
           ~user_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_arn ?id ~domain ~user_pool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_arn ?id ~domain ~user_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
