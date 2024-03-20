(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~name ~retention_duration ~vault_id __id =
  let __type =
    "azurerm_data_protection_backup_policy_blob_storage"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       retention_duration =
         Prop.computed __type __id "retention_duration";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_blob_storage
        (azurerm_data_protection_backup_policy_blob_storage ?id
           ?timeouts ~name ~retention_duration ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~retention_duration
    ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~retention_duration ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
