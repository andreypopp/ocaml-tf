(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_sagemaker_workforce__cognito_config = {
  client_id : string;  (** client_id *)
  user_pool : string;  (** user_pool *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__cognito_config *)

type aws_sagemaker_workforce__oidc_config = {
  authorization_endpoint : string;  (** authorization_endpoint *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  issuer : string;  (** issuer *)
  jwks_uri : string;  (** jwks_uri *)
  logout_endpoint : string;  (** logout_endpoint *)
  token_endpoint : string;  (** token_endpoint *)
  user_info_endpoint : string;  (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__oidc_config *)

type aws_sagemaker_workforce__source_ip_config = {
  cidrs : string list;  (** cidrs *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__source_ip_config *)

type aws_sagemaker_workforce__workforce_vpc_config = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnets : string list option; [@option]  (** subnets *)
  vpc_endpoint_id : string;  (** vpc_endpoint_id *)
  vpc_id : string option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__workforce_vpc_config *)

type aws_sagemaker_workforce = {
  workforce_name : string;  (** workforce_name *)
  cognito_config : aws_sagemaker_workforce__cognito_config list;
  oidc_config : aws_sagemaker_workforce__oidc_config list;
  source_ip_config : aws_sagemaker_workforce__source_ip_config list;
  workforce_vpc_config :
    aws_sagemaker_workforce__workforce_vpc_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce *)

let aws_sagemaker_workforce ~workforce_name ~cognito_config
    ~oidc_config ~source_ip_config ~workforce_vpc_config
    __resource_id =
  let __resource_type = "aws_sagemaker_workforce" in
  let __resource =
    {
      workforce_name;
      cognito_config;
      oidc_config;
      source_ip_config;
      workforce_vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_workforce __resource);
  ()
