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

type azurerm_storage_data_lake_gen2_filesystem = {
  group : string prop option; [@option]  (** group *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner : string prop option; [@option]  (** owner *)
  properties : (string * string prop) list option; [@option]
      (** properties *)
  storage_account_id : string prop;  (** storage_account_id *)
  ace : ace list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem *)

let ace ?id ?scope ~permissions ~type_ () : ace =
  { id; permissions; scope; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_data_lake_gen2_filesystem ?group ?id ?owner
    ?properties ?timeouts ~name ~storage_account_id ~ace () :
    azurerm_storage_data_lake_gen2_filesystem =
  {
    group;
    id;
    name;
    owner;
    properties;
    storage_account_id;
    ace;
    timeouts;
  }

type t = {
  group : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  properties : (string * string) list prop;
  storage_account_id : string prop;
}

let make ?group ?id ?owner ?properties ?timeouts ~name
    ~storage_account_id ~ace __id =
  let __type = "azurerm_storage_data_lake_gen2_filesystem" in
  let __attrs =
    ({
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       properties = Prop.computed __type __id "properties";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_data_lake_gen2_filesystem
        (azurerm_storage_data_lake_gen2_filesystem ?group ?id ?owner
           ?properties ?timeouts ~name ~storage_account_id ~ace ());
    attrs = __attrs;
  }

let register ?tf_module ?group ?id ?owner ?properties ?timeouts ~name
    ~storage_account_id ~ace __id =
  let (r : _ Tf_core.resource) =
    make ?group ?id ?owner ?properties ?timeouts ~name
      ~storage_account_id ~ace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
