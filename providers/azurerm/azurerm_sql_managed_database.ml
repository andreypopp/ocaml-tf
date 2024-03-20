(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sql_managed_database = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  sql_managed_instance_id : string prop;
      (** sql_managed_instance_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_database *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sql_managed_database ?id ?timeouts ~location ~name
    ~sql_managed_instance_id () : azurerm_sql_managed_database =
  { id; location; name; sql_managed_instance_id; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  sql_managed_instance_id : string prop;
}

let make ?id ?timeouts ~location ~name ~sql_managed_instance_id __id
    =
  let __type = "azurerm_sql_managed_database" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       sql_managed_instance_id =
         Prop.computed __type __id "sql_managed_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_managed_database
        (azurerm_sql_managed_database ?id ?timeouts ~location ~name
           ~sql_managed_instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~sql_managed_instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~sql_managed_instance_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
