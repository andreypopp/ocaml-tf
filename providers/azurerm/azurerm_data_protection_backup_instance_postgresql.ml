(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_instance_postgresql *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_protection_backup_instance_postgresql
    ?database_credential_key_vault_secret_id ?id ?timeouts
    ~backup_policy_id ~database_id ~location ~name ~vault_id () :
    azurerm_data_protection_backup_instance_postgresql =
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

type t = {
  backup_policy_id : string prop;
  database_credential_key_vault_secret_id : string prop;
  database_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  vault_id : string prop;
}

let make ?database_credential_key_vault_secret_id ?id ?timeouts
    ~backup_policy_id ~database_id ~location ~name ~vault_id __id =
  let __type =
    "azurerm_data_protection_backup_instance_postgresql"
  in
  let __attrs =
    ({
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       database_credential_key_vault_secret_id =
         Prop.computed __type __id
           "database_credential_key_vault_secret_id";
       database_id = Prop.computed __type __id "database_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_instance_postgresql
        (azurerm_data_protection_backup_instance_postgresql
           ?database_credential_key_vault_secret_id ?id ?timeouts
           ~backup_policy_id ~database_id ~location ~name ~vault_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?database_credential_key_vault_secret_id ?id
    ?timeouts ~backup_policy_id ~database_id ~location ~name
    ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?database_credential_key_vault_secret_id ?id ?timeouts
      ~backup_policy_id ~database_id ~location ~name ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
