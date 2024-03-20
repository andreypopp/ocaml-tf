(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mariadb_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  value : string prop;  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_configuration *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_mariadb_configuration ?id ?timeouts ~name
    ~resource_group_name ~server_name ~value () :
    azurerm_mariadb_configuration =
  { id; name; resource_group_name; server_name; value; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  value : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~server_name ~value
    __id =
  let __type = "azurerm_mariadb_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mariadb_configuration
        (azurerm_mariadb_configuration ?id ?timeouts ~name
           ~resource_group_name ~server_name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~server_name ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~server_name ~value
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
