(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ace = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop;  (** permissions *)
  scope : string prop option; [@option]  (** scope *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** ace *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_data_lake_gen2_path = {
  filesystem_name : string prop;  (** filesystem_name *)
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  owner : string prop option; [@option]  (** owner *)
  path : string prop;  (** path *)
  resource : string prop;  (** resource *)
  storage_account_id : string prop;  (** storage_account_id *)
  ace : ace list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_path *)

let ace ?id ?scope ~permissions ~type_ () : ace =
  { id; permissions; scope; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_data_lake_gen2_path ?group ?id ?owner ?timeouts
    ~filesystem_name ~path ~resource ~storage_account_id ~ace () :
    azurerm_storage_data_lake_gen2_path =
  {
    filesystem_name;
    group;
    id;
    owner;
    path;
    resource;
    storage_account_id;
    ace;
    timeouts;
  }

type t = {
  filesystem_name : string prop;
  group : string prop;
  id : string prop;
  owner : string prop;
  path : string prop;
  resource : string prop;
  storage_account_id : string prop;
}

let make ?group ?id ?owner ?timeouts ~filesystem_name ~path ~resource
    ~storage_account_id ~ace __id =
  let __type = "azurerm_storage_data_lake_gen2_path" in
  let __attrs =
    ({
       filesystem_name = Prop.computed __type __id "filesystem_name";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       path = Prop.computed __type __id "path";
       resource = Prop.computed __type __id "resource";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_data_lake_gen2_path
        (azurerm_storage_data_lake_gen2_path ?group ?id ?owner
           ?timeouts ~filesystem_name ~path ~resource
           ~storage_account_id ~ace ());
    attrs = __attrs;
  }

let register ?tf_module ?group ?id ?owner ?timeouts ~filesystem_name
    ~path ~resource ~storage_account_id ~ace __id =
  let (r : _ Tf_core.resource) =
    make ?group ?id ?owner ?timeouts ~filesystem_name ~path ~resource
      ~storage_account_id ~ace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
