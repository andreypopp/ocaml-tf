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

type azurerm_storage_table_entity = {
  entity : (string * string prop) list;  (** entity *)
  id : string prop option; [@option]  (** id *)
  partition_key : string prop;  (** partition_key *)
  row_key : string prop;  (** row_key *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  storage_table_id : string prop option; [@option]
      (** storage_table_id *)
  table_name : string prop option; [@option]  (** table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table_entity *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_table_entity ?id ?storage_account_name
    ?storage_table_id ?table_name ?timeouts ~entity ~partition_key
    ~row_key () : azurerm_storage_table_entity =
  {
    entity;
    id;
    partition_key;
    row_key;
    storage_account_name;
    storage_table_id;
    table_name;
    timeouts;
  }

type t = {
  entity : (string * string) list prop;
  id : string prop;
  partition_key : string prop;
  row_key : string prop;
  storage_account_name : string prop;
  storage_table_id : string prop;
  table_name : string prop;
}

let make ?id ?storage_account_name ?storage_table_id ?table_name
    ?timeouts ~entity ~partition_key ~row_key __id =
  let __type = "azurerm_storage_table_entity" in
  let __attrs =
    ({
       entity = Prop.computed __type __id "entity";
       id = Prop.computed __type __id "id";
       partition_key = Prop.computed __type __id "partition_key";
       row_key = Prop.computed __type __id "row_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       storage_table_id =
         Prop.computed __type __id "storage_table_id";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_table_entity
        (azurerm_storage_table_entity ?id ?storage_account_name
           ?storage_table_id ?table_name ?timeouts ~entity
           ~partition_key ~row_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_account_name ?storage_table_id
    ?table_name ?timeouts ~entity ~partition_key ~row_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_account_name ?storage_table_id ?table_name
      ?timeouts ~entity ~partition_key ~row_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
