(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_instance_postgresql__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_postgresql__timeouts *)

type azurerm_data_protection_backup_instance_postgresql = {
  backup_policy_id : string prop;  (** backup_policy_id *)
  database_credential_key_vault_secret_id : string prop option;
      [@option]
      (** database_credential_key_vault_secret_id *)
  database_id : string prop;  (** database_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  vault_id : string prop;  (** vault_id *)
  timeouts :
    azurerm_data_protection_backup_instance_postgresql__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_postgresql *)

type t = {
  backup_policy_id : string prop;
  database_credential_key_vault_secret_id : string prop;
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  vault_id : string prop;
}

let azurerm_data_protection_backup_instance_postgresql
    ?database_credential_key_vault_secret_id ?id ?timeouts
    ~backup_policy_id ~database_id ~location ~name ~vault_id
    __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_instance_postgresql"
  in
  let __resource =
    ({
       backup_policy_id;
       database_credential_key_vault_secret_id;
       database_id;
       id;
       location;
       name;
       vault_id;
       timeouts;
     }
      : azurerm_data_protection_backup_instance_postgresql)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_instance_postgresql
       __resource);
  let __resource_attributes =
    ({
       backup_policy_id =
         Prop.computed __resource_type __resource_id
           "backup_policy_id";
       database_credential_key_vault_secret_id =
         Prop.computed __resource_type __resource_id
           "database_credential_key_vault_secret_id";
       database_id =
         Prop.computed __resource_type __resource_id "database_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       vault_id =
         Prop.computed __resource_type __resource_id "vault_id";
     }
      : t)
  in
  __resource_attributes
