(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_named_value__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value__timeouts *)

type azurerm_api_management_named_value__value_from_key_vault = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  secret_id : string prop;  (** secret_id *)
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value__value_from_key_vault *)

type azurerm_api_management_named_value = {
  api_management_name : string prop;  (** api_management_name *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  secret : bool prop option; [@option]  (** secret *)
  tags : string prop list option; [@option]  (** tags *)
  value : string prop option; [@option]  (** value *)
  timeouts : azurerm_api_management_named_value__timeouts option;
  value_from_key_vault :
    azurerm_api_management_named_value__value_from_key_vault list;
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value *)

type t = {
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop;
  tags : string list prop;
  value : string prop;
}

let azurerm_api_management_named_value ?id ?secret ?tags ?value
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name ~value_from_key_vault __resource_id =
  let __resource_type = "azurerm_api_management_named_value" in
  let __resource =
    ({
       api_management_name;
       display_name;
       id;
       name;
       resource_group_name;
       secret;
       tags;
       value;
       timeouts;
       value_from_key_vault;
     }
      : azurerm_api_management_named_value)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_named_value __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secret = Prop.computed __resource_type __resource_id "secret";
       tags = Prop.computed __resource_type __resource_id "tags";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
