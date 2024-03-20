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

type azurerm_cosmosdb_sql_function = {
  body : string prop;  (** body *)
  container_id : string prop;  (** container_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_sql_function *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cosmosdb_sql_function ?id ?timeouts ~body ~container_id
    ~name () : azurerm_cosmosdb_sql_function =
  { body; container_id; id; name; timeouts }

type t = {
  body : string prop;
  container_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~body ~container_id ~name __id =
  let __type = "azurerm_cosmosdb_sql_function" in
  let __attrs =
    ({
       body = Prop.computed __type __id "body";
       container_id = Prop.computed __type __id "container_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_sql_function
        (azurerm_cosmosdb_sql_function ?id ?timeouts ~body
           ~container_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~body ~container_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~body ~container_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
