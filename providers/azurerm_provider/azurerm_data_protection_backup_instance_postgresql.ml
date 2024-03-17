(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_instance_postgresql__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_postgresql__timeouts *)

type azurerm_data_protection_backup_instance_postgresql = {
  backup_policy_id : string;  (** backup_policy_id *)
  database_credential_key_vault_secret_id : string option; [@option]
      (** database_credential_key_vault_secret_id *)
  database_id : string;  (** database_id *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  vault_id : string;  (** vault_id *)
  timeouts :
    azurerm_data_protection_backup_instance_postgresql__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_postgresql *)

let azurerm_data_protection_backup_instance_postgresql
    ?database_credential_key_vault_secret_id ?id ?timeouts
    ~backup_policy_id ~database_id ~location ~name ~vault_id
    __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_instance_postgresql"
  in
  let __resource =
    {
      backup_policy_id;
      database_credential_key_vault_secret_id;
      database_id;
      id;
      location;
      name;
      vault_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_instance_postgresql
       __resource);
  ()
