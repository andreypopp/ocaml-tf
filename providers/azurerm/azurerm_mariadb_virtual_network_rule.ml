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

type azurerm_mariadb_virtual_network_rule = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_virtual_network_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mariadb_virtual_network_rule ?id ?timeouts ~name
    ~resource_group_name ~server_name ~subnet_id () :
    azurerm_mariadb_virtual_network_rule =
  { id; name; resource_group_name; server_name; subnet_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  subnet_id : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~server_name
    ~subnet_id __id =
  let __type = "azurerm_mariadb_virtual_network_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_name = Prop.computed __type __id "server_name";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mariadb_virtual_network_rule
        (azurerm_mariadb_virtual_network_rule ?id ?timeouts ~name
           ~resource_group_name ~server_name ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~server_name ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~server_name
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
