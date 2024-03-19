(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_protection_backup_policy_blob_storage = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  retention_duration : string prop;  (** retention_duration *)
  vault_id : string prop;  (** vault_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_blob_storage *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_blob_storage ?id ?timeouts
    ~name ~retention_duration ~vault_id () :
    azurerm_data_protection_backup_policy_blob_storage =
  { id; name; retention_duration; vault_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  retention_duration : string prop;
  vault_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~retention_duration
    ~vault_id __resource_id =
  let __resource_type =
    "azurerm_data_protection_backup_policy_blob_storage"
  in
  let __resource =
    azurerm_data_protection_backup_policy_blob_storage ?id ?timeouts
      ~name ~retention_duration ~vault_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_blob_storage
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       retention_duration =
         Prop.computed __resource_type __resource_id
           "retention_duration";
       vault_id =
         Prop.computed __resource_type __resource_id "vault_id";
     }
      : t)
  in
  __resource_attributes
