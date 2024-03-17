(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_api_gateway_domain_name__endpoint_configuration = {
  types : string list;  (** types *)
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name__endpoint_configuration *)

type aws_api_gateway_domain_name__mutual_tls_authentication = {
  truststore_uri : string;  (** truststore_uri *)
  truststore_version : string option; [@option]
      (** truststore_version *)
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name__mutual_tls_authentication *)

type aws_api_gateway_domain_name = {
  certificate_arn : string option; [@option]  (** certificate_arn *)
  certificate_body : string option; [@option]
      (** certificate_body *)
  certificate_chain : string option; [@option]
      (** certificate_chain *)
  certificate_name : string option; [@option]
      (** certificate_name *)
  certificate_private_key : string option; [@option]
      (** certificate_private_key *)
  domain_name : string;  (** domain_name *)
  regional_certificate_arn : string option; [@option]
      (** regional_certificate_arn *)
  regional_certificate_name : string option; [@option]
      (** regional_certificate_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  endpoint_configuration :
    aws_api_gateway_domain_name__endpoint_configuration list;
  mutual_tls_authentication :
    aws_api_gateway_domain_name__mutual_tls_authentication list;
}
[@@deriving yojson_of]
(** aws_api_gateway_domain_name *)

let aws_api_gateway_domain_name ?certificate_arn ?certificate_body
    ?certificate_chain ?certificate_name ?certificate_private_key
    ?regional_certificate_arn ?regional_certificate_name ?tags
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
      regional_certificate_arn;
      regional_certificate_name;
      tags;
      endpoint_configuration;
      mutual_tls_authentication;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_api_gateway_domain_name __resource);
  ()
