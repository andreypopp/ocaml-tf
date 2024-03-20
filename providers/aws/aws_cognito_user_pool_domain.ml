(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cognito_user_pool_domain = {
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  domain : string prop;  (** domain *)
  id : string prop option; [@option]  (** id *)
  user_pool_id : string prop;  (** user_pool_id *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_domain *)

let aws_cognito_user_pool_domain ?certificate_arn ?id ~domain
    ~user_pool_id () : aws_cognito_user_pool_domain =
  { certificate_arn; domain; id; user_pool_id }

type t = {
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
