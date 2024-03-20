(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_sync_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_sync_id : string prop;  (** storage_sync_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_storage_sync_group ?id ?timeouts ~name ~storage_sync_id
    () : azurerm_storage_sync_group =
  { id; name; storage_sync_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  storage_sync_id : string prop;
}

let make ?id ?timeouts ~name ~storage_sync_id __id =
  let __type = "azurerm_storage_sync_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_sync_id = Prop.computed __type __id "storage_sync_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync_group
        (azurerm_storage_sync_group ?id ?timeouts ~name
           ~storage_sync_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~storage_sync_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~storage_sync_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
