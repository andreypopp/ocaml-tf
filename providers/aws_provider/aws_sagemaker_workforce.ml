(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_workforce__cognito_config = {
  client_id : string prop;  (** client_id *)
  user_pool : string prop;  (** user_pool *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__cognito_config *)

type aws_sagemaker_workforce__oidc_config = {
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  issuer : string prop;  (** issuer *)
  jwks_uri : string prop;  (** jwks_uri *)
  logout_endpoint : string prop;  (** logout_endpoint *)
  token_endpoint : string prop;  (** token_endpoint *)
  user_info_endpoint : string prop;  (** user_info_endpoint *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__oidc_config *)

type aws_sagemaker_workforce__source_ip_config = {
  cidrs : string prop list;  (** cidrs *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__source_ip_config *)

type aws_sagemaker_workforce__workforce_vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnets : string prop list option; [@option]  (** subnets *)
  vpc_endpoint_id : string prop;  (** vpc_endpoint_id *)
  vpc_id : string prop option; [@option]  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce__workforce_vpc_config *)

type aws_sagemaker_workforce = {
  id : string prop option; [@option]  (** id *)
  workforce_name : string prop;  (** workforce_name *)
  cognito_config : aws_sagemaker_workforce__cognito_config list;
  oidc_config : aws_sagemaker_workforce__oidc_config list;
  source_ip_config : aws_sagemaker_workforce__source_ip_config list;
  workforce_vpc_config :
    aws_sagemaker_workforce__workforce_vpc_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workforce *)

type t = {
  arn : string prop;
  id : string prop;
  subdomain : string prop;
  workforce_name : string prop;
}

let aws_sagemaker_workforce ?id ~workforce_name ~cognito_config
    ~oidc_config ~source_ip_config ~workforce_vpc_config
    __resource_id =
  let __resource_type = "aws_sagemaker_workforce" in
  let __resource =
    ({
       id;
       workforce_name;
       cognito_config;
       oidc_config;
       source_ip_config;
       workforce_vpc_config;
     }
      : aws_sagemaker_workforce)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_workforce __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       subdomain =
         Prop.computed __resource_type __resource_id "subdomain";
       workforce_name =
         Prop.computed __resource_type __resource_id "workforce_name";
     }
      : t)
  in
  __resource_attributes
