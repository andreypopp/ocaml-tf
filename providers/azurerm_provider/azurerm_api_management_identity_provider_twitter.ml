(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_identity_provider_twitter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_twitter__timeouts *)

type azurerm_api_management_identity_provider_twitter = {
  api_key : string prop;  (** api_key *)
  api_management_name : string prop;  (** api_management_name *)
  api_secret_key : string prop;  (** api_secret_key *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_api_management_identity_provider_twitter__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_identity_provider_twitter *)

type t = {
  api_key : string prop;
  api_management_name : string prop;
  api_secret_key : string prop;
  id : string prop;
  resource_group_name : string prop;
}

let azurerm_api_management_identity_provider_twitter ?id ?timeouts
    ~api_key ~api_management_name ~api_secret_key
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_api_management_identity_provider_twitter"
  in
  let __resource =
    ({
       api_key;
       api_management_name;
       api_secret_key;
       id;
       resource_group_name;
       timeouts;
     }
      : azurerm_api_management_identity_provider_twitter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_identity_provider_twitter
       __resource);
  let __resource_attributes =
    ({
       api_key =
         Prop.computed __resource_type __resource_id "api_key";
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_secret_key =
         Prop.computed __resource_type __resource_id "api_secret_key";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
