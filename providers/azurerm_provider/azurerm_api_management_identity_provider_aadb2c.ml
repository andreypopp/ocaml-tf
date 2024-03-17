(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_identity_provider_aadb2c__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aadb2c__timeouts *)

type azurerm_api_management_identity_provider_aadb2c = {
  allowed_tenant : string;  (** allowed_tenant *)
  api_management_name : string;  (** api_management_name *)
  authority : string;  (** authority *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  id : string option; [@option]  (** id *)
  password_reset_policy : string option; [@option]
      (** password_reset_policy *)
  profile_editing_policy : string option; [@option]
      (** profile_editing_policy *)
  resource_group_name : string;  (** resource_group_name *)
  signin_policy : string;  (** signin_policy *)
  signin_tenant : string;  (** signin_tenant *)
  signup_policy : string;  (** signup_policy *)
  timeouts :
    azurerm_api_management_identity_provider_aadb2c__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_aadb2c *)

let azurerm_api_management_identity_provider_aadb2c ?id
    ?password_reset_policy ?profile_editing_policy ?timeouts
    ~allowed_tenant ~api_management_name ~authority ~client_id
    ~client_secret ~resource_group_name ~signin_policy ~signin_tenant
    ~signup_policy __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_aadb2c"
  in
  let __resource =
    {
      allowed_tenant;
      api_management_name;
      authority;
      client_id;
      client_secret;
      id;
      password_reset_policy;
      profile_editing_policy;
      resource_group_name;
      signin_policy;
      signin_tenant;
      signup_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_aadb2c
       __resource);
  ()
