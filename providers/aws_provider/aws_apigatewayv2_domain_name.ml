(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_apigatewayv2_domain_name__domain_name_configuration = {
  certificate_arn : string;  (** certificate_arn *)
  endpoint_type : string;  (** endpoint_type *)
  hosted_zone_id : string;  (** hosted_zone_id *)
  ownership_verification_certificate_arn : string option; [@option]
      (** ownership_verification_certificate_arn *)
  security_policy : string;  (** security_policy *)
  target_domain_name : string;  (** target_domain_name *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_domain_name__domain_name_configuration *)

type aws_apigatewayv2_domain_name__mutual_tls_authentication = {
  truststore_uri : string;  (** truststore_uri *)
  truststore_version : string option; [@option]
      (** truststore_version *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_domain_name__mutual_tls_authentication *)

type aws_apigatewayv2_domain_name__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_apigatewayv2_domain_name__timeouts *)

type aws_apigatewayv2_domain_name = {
  domain_name : string;  (** domain_name *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  domain_name_configuration :
    aws_apigatewayv2_domain_name__domain_name_configuration list;
  mutual_tls_authentication :
    aws_apigatewayv2_domain_name__mutual_tls_authentication list;
  timeouts : aws_apigatewayv2_domain_name__timeouts option;
}
[@@deriving yojson_of]
(** aws_apigatewayv2_domain_name *)

let aws_apigatewayv2_domain_name ?id ?tags ?tags_all ?timeouts
    ~domain_name ~domain_name_configuration
    ~mutual_tls_authentication __resource_id =
  let __resource_type = "aws_apigatewayv2_domain_name" in
  let __resource =
    {
      domain_name;
      id;
      tags;
      tags_all;
      domain_name_configuration;
      mutual_tls_authentication;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_apigatewayv2_domain_name __resource);
  ()
