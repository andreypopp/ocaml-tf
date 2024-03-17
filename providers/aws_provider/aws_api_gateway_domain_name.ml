(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_domain_name__endpoint_configuration = {
  types : string prop list;  (** types *)
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name__endpoint_configuration *)

type aws_api_gateway_domain_name__mutual_tls_authentication = {
  truststore_uri : string prop;  (** truststore_uri *)
  truststore_version : string prop option; [@option]
      (** truststore_version *)
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name__mutual_tls_authentication *)

type aws_api_gateway_domain_name = {
  certificate_arn : string prop option; [@option]
      (** certificate_arn *)
  certificate_body : string prop option; [@option]
      (** certificate_body *)
  certificate_chain : string prop option; [@option]
      (** certificate_chain *)
  certificate_name : string prop option; [@option]
      (** certificate_name *)
  certificate_private_key : string prop option; [@option]
      (** certificate_private_key *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  ownership_verification_certificate_arn : string prop option;
      [@option]
      (** ownership_verification_certificate_arn *)
  regional_certificate_arn : string prop option; [@option]
      (** regional_certificate_arn *)
  regional_certificate_name : string prop option; [@option]
      (** regional_certificate_name *)
  security_policy : string prop option; [@option]
      (** security_policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  endpoint_configuration :
    aws_api_gateway_domain_name__endpoint_configuration list;
  mutual_tls_authentication :
    aws_api_gateway_domain_name__mutual_tls_authentication list;
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name *)

type t = {
  arn : string prop;
  certificate_arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  certificate_name : string prop;
  certificate_private_key : string prop;
  certificate_upload_date : string prop;
  cloudfront_domain_name : string prop;
  cloudfront_zone_id : string prop;
  domain_name : string prop;
  id : string prop;
  ownership_verification_certificate_arn : string prop;
  regional_certificate_arn : string prop;
  regional_certificate_name : string prop;
  regional_domain_name : string prop;
  regional_zone_id : string prop;
  security_policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_api_gateway_domain_name ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ~domain_name ~endpoint_configuration ~mutual_tls_authentication
    __resource_id =
  let __resource_type = "aws_api_gateway_domain_name" in
  let __resource =
    ({
       certificate_arn;
       certificate_body;
       certificate_chain;
       certificate_name;
       certificate_private_key;
       domain_name;
       id;
       ownership_verification_certificate_arn;
       regional_certificate_arn;
       regional_certificate_name;
       security_policy;
       tags;
       tags_all;
       endpoint_configuration;
       mutual_tls_authentication;
     }
      : aws_api_gateway_domain_name)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_domain_name __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       certificate_arn =
         Prop.computed __resource_type __resource_id
           "certificate_arn";
       certificate_body =
         Prop.computed __resource_type __resource_id
           "certificate_body";
       certificate_chain =
         Prop.computed __resource_type __resource_id
           "certificate_chain";
       certificate_name =
         Prop.computed __resource_type __resource_id
           "certificate_name";
       certificate_private_key =
         Prop.computed __resource_type __resource_id
           "certificate_private_key";
       certificate_upload_date =
         Prop.computed __resource_type __resource_id
           "certificate_upload_date";
       cloudfront_domain_name =
         Prop.computed __resource_type __resource_id
           "cloudfront_domain_name";
       cloudfront_zone_id =
         Prop.computed __resource_type __resource_id
           "cloudfront_zone_id";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       ownership_verification_certificate_arn =
         Prop.computed __resource_type __resource_id
           "ownership_verification_certificate_arn";
       regional_certificate_arn =
         Prop.computed __resource_type __resource_id
           "regional_certificate_arn";
       regional_certificate_name =
         Prop.computed __resource_type __resource_id
           "regional_certificate_name";
       regional_domain_name =
         Prop.computed __resource_type __resource_id
           "regional_domain_name";
       regional_zone_id =
         Prop.computed __resource_type __resource_id
           "regional_zone_id";
       security_policy =
         Prop.computed __resource_type __resource_id
           "security_policy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
