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

let aws_api_gateway_domain_name ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key ?id
    ?ownership_verification_certificate_arn ?regional_certificate_arn
    ?regional_certificate_name ?security_policy ?tags ?tags_all
    ~domain_name ~endpoint_configuration ~mutual_tls_authentication
    __resource_id =
  let __resource_type = "aws_api_gateway_domain_name" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_domain_name __resource);
  ()
