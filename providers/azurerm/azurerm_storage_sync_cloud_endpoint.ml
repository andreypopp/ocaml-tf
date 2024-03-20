(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_sync_cloud_endpoint = {
  file_share_name : string prop;  (** file_share_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_account_id : string prop;  (** storage_account_id *)
  storage_account_tenant_id : string prop option; [@option]
      (** storage_account_tenant_id *)
  storage_sync_group_id : string prop;  (** storage_sync_group_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_cloud_endpoint *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_storage_sync_cloud_endpoint ?id
    ?storage_account_tenant_id ?timeouts ~file_share_name ~name
    ~storage_account_id ~storage_sync_group_id () :
    azurerm_storage_sync_cloud_endpoint =
  {
    file_share_name;
    id;
    name;
    storage_account_id;
    storage_account_tenant_id;
    storage_sync_group_id;
    timeouts;
  }

type t = {
  file_share_name : string prop;
  id : string prop;
  name : string prop;
  storage_account_id : string prop;
  storage_account_tenant_id : string prop;
  storage_sync_group_id : string prop;
}

let make ?id ?storage_account_tenant_id ?timeouts ~file_share_name
    ~name ~storage_account_id ~storage_sync_group_id __id =
  let __type = "azurerm_storage_sync_cloud_endpoint" in
  let __attrs =
    ({
       file_share_name = Prop.computed __type __id "file_share_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_tenant_id =
         Prop.computed __type __id "storage_account_tenant_id";
       storage_sync_group_id =
         Prop.computed __type __id "storage_sync_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync_cloud_endpoint
        (azurerm_storage_sync_cloud_endpoint ?id
           ?storage_account_tenant_id ?timeouts ~file_share_name
           ~name ~storage_account_id ~storage_sync_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_account_tenant_id ?timeouts
    ~file_share_name ~name ~storage_account_id ~storage_sync_group_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_account_tenant_id ?timeouts ~file_share_name
      ~name ~storage_account_id ~storage_sync_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
