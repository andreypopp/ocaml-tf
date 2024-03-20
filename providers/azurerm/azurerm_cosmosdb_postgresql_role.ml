(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cosmosdb_postgresql_role = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cosmosdb_postgresql_role *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cosmosdb_postgresql_role ?id ?timeouts ~cluster_id ~name
    ~password () : azurerm_cosmosdb_postgresql_role =
  { cluster_id; id; name; password; timeouts }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
}

let make ?id ?timeouts ~cluster_id ~name ~password __id =
  let __type = "azurerm_cosmosdb_postgresql_role" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cosmosdb_postgresql_role
        (azurerm_cosmosdb_postgresql_role ?id ?timeouts ~cluster_id
           ~name ~password ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cluster_id ~name ~password
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cluster_id ~name ~password __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
