(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cognito_user_pool_client__analytics_configuration = {
  application_arn : string option; [@option]  (** application_arn *)
  application_id : string option; [@option]  (** application_id *)
  external_id : string option; [@option]  (** external_id *)
  role_arn : string option; [@option]  (** role_arn *)
  user_data_shared : bool option; [@option]  (** user_data_shared *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_client__analytics_configuration *)

type aws_cognito_user_pool_client__token_validity_units = {
  access_token : string option; [@option]  (** access_token *)
  id_token : string option; [@option]  (** id_token *)
  refresh_token : string option; [@option]  (** refresh_token *)
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_client__token_validity_units *)

type aws_cognito_user_pool_client = {
  generate_secret : bool option; [@option]  (** generate_secret *)
  name : string;  (** name *)
  user_pool_id : string;  (** user_pool_id *)
  analytics_configuration :
    aws_cognito_user_pool_client__analytics_configuration list;
  token_validity_units :
    aws_cognito_user_pool_client__token_validity_units list;
}
[@@deriving yojson_of]
(** aws_cognito_user_pool_client *)

let aws_cognito_user_pool_client ?generate_secret ~name ~user_pool_id
    ~analytics_configuration ~token_validity_units __resource_id =
  let __resource_type = "aws_cognito_user_pool_client" in
  let __resource =
    {
      generate_secret;
      name;
      user_pool_id;
      analytics_configuration;
      token_validity_units;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cognito_user_pool_client __resource);
  ()
