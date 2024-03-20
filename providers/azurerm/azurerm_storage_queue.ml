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

type azurerm_storage_queue = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  storage_account_name : string prop;  (** storage_account_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_queue *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_queue ?id ?metadata ?timeouts ~name
    ~storage_account_name () : azurerm_storage_queue =
  { id; metadata; name; storage_account_name; timeouts }

type t = {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

let make ?id ?metadata ?timeouts ~name ~storage_account_name __id =
  let __type = "azurerm_storage_queue" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_queue
        (azurerm_storage_queue ?id ?metadata ?timeouts ~name
           ~storage_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts ~name
    ~storage_account_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~name ~storage_account_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
