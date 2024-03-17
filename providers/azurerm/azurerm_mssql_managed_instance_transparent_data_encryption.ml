(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mssql_managed_instance_transparent_data_encryption__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_transparent_data_encryption__timeouts *)

type azurerm_mssql_managed_instance_transparent_data_encryption = {
  auto_rotation_enabled : bool prop option; [@option]
      (** auto_rotation_enabled *)
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  managed_instance_id : string prop;  (** managed_instance_id *)
  timeouts :
    azurerm_mssql_managed_instance_transparent_data_encryption__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_mssql_managed_instance_transparent_data_encryption *)

type t = {
  auto_rotation_enabled : bool prop;
  id : string prop;
  key_vault_key_id : string prop;
  managed_instance_id : string prop;
}

let azurerm_mssql_managed_instance_transparent_data_encryption
    ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
    ~managed_instance_id __resource_id =
  let __resource_type =
    "azurerm_mssql_managed_instance_transparent_data_encryption"
  in
  let __resource =
    ({
       auto_rotation_enabled;
       id;
       key_vault_key_id;
       managed_instance_id;
       timeouts;
     }
      : azurerm_mssql_managed_instance_transparent_data_encryption)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mssql_managed_instance_transparent_data_encryption
       __resource);
  let __resource_attributes =
    ({
       auto_rotation_enabled =
         Prop.computed __resource_type __resource_id
           "auto_rotation_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       managed_instance_id =
         Prop.computed __resource_type __resource_id
           "managed_instance_id";
     }
      : t)
  in
  __resource_attributes
