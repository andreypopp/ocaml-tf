(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?certificate_arn ?id ~domain ~user_pool_id
    __resource_id =
  let __resource_type = "aws_cognito_user_pool_domain" in
  let __resource =
    aws_cognito_user_pool_domain ?certificate_arn ?id ~domain
      ~user_pool_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool_domain __resource);
  let __resource_attributes =
    ({
       aws_account_id =
         Prop.computed __resource_type __resource_id "aws_account_id";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       cloudfront_distribution =
         Prop.computed __resource_type __resource_id
           "cloudfront_distribution";
       cloudfront_distribution_arn =
         Prop.computed __resource_type __resource_id
           "cloudfront_distribution_arn";
       cloudfront_distribution_zone_id =
         Prop.computed __resource_type __resource_id
           "cloudfront_distribution_zone_id";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       s3_bucket =
         Prop.computed __resource_type __resource_id "s3_bucket";
       user_pool_id =
         Prop.computed __resource_type __resource_id "user_pool_id";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
