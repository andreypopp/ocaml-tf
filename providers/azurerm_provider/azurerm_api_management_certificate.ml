(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_certificate__timeouts *)

type azurerm_api_management_certificate = {
  api_management_name : string prop;  (** api_management_name *)
  data : string prop option; [@option]  (** data *)
  id : string prop option; [@option]  (** id *)
  key_vault_identity_client_id : string prop option; [@option]
      (** key_vault_identity_client_id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_api_management_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_certificate *)

let azurerm_api_management_certificate ?data ?id
    ?key_vault_identity_client_id ?key_vault_secret_id ?password
    ?timeouts ~api_management_name ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_api_management_certificate" in
  let __resource =
    {
      api_management_name;
      data;
      id;
      key_vault_identity_client_id;
      key_vault_secret_id;
      name;
      password;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_certificate __resource);
  ()
