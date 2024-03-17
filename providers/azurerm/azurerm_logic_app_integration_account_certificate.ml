(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_certificate__key_vault_key = {
  key_name : string prop;  (** key_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_version : string prop option; [@option]  (** key_version *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate__key_vault_key *)

type azurerm_logic_app_integration_account_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate__timeouts *)

type azurerm_logic_app_integration_account_certificate = {
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  public_certificate : string prop option; [@option]
      (** public_certificate *)
  resource_group_name : string prop;  (** resource_group_name *)
  key_vault_key :
    azurerm_logic_app_integration_account_certificate__key_vault_key
    list;
  timeouts :
    azurerm_logic_app_integration_account_certificate__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_certificate *)

type t = {
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  public_certificate : string prop;
  resource_group_name : string prop;
}

let azurerm_logic_app_integration_account_certificate ?id ?metadata
    ?public_certificate ?timeouts ~integration_account_name ~name
    ~resource_group_name ~key_vault_key __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_certificate"
  in
  let __resource =
    ({
       id;
       integration_account_name;
       metadata;
       name;
       public_certificate;
       resource_group_name;
       key_vault_key;
       timeouts;
     }
      : azurerm_logic_app_integration_account_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_certificate
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       integration_account_name =
         Prop.computed __resource_type __resource_id
           "integration_account_name";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       public_certificate =
         Prop.computed __resource_type __resource_id
           "public_certificate";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
