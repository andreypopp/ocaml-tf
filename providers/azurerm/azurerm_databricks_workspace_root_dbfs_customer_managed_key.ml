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

type azurerm_databricks_workspace_root_dbfs_customer_managed_key = {
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_databricks_workspace_root_dbfs_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_databricks_workspace_root_dbfs_customer_managed_key ?id
    ?timeouts ~key_vault_key_id ~workspace_id () :
    azurerm_databricks_workspace_root_dbfs_customer_managed_key =
  { id; key_vault_key_id; workspace_id; timeouts }

type t = {
  id : string prop;
  key_vault_key_id : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~key_vault_key_id ~workspace_id __id =
  let __type =
    "azurerm_databricks_workspace_root_dbfs_customer_managed_key"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_databricks_workspace_root_dbfs_customer_managed_key
        (azurerm_databricks_workspace_root_dbfs_customer_managed_key
           ?id ?timeouts ~key_vault_key_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_key_id ~workspace_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_key_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
