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

type azurerm_mssql_virtual_network_rule = {
  id : string prop option; [@option]  (** id *)
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  name : string prop;  (** name *)
  server_id : string prop;  (** server_id *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_virtual_network_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_virtual_network_rule ?id
    ?ignore_missing_vnet_service_endpoint ?timeouts ~name ~server_id
    ~subnet_id () : azurerm_mssql_virtual_network_rule =
  {
    id;
    ignore_missing_vnet_service_endpoint;
    name;
    server_id;
    subnet_id;
    timeouts;
  }

type t = {
  id : string prop;
  ignore_missing_vnet_service_endpoint : bool prop;
  name : string prop;
  server_id : string prop;
  subnet_id : string prop;
}

let make ?id ?ignore_missing_vnet_service_endpoint ?timeouts ~name
    ~server_id ~subnet_id __id =
  let __type = "azurerm_mssql_virtual_network_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ignore_missing_vnet_service_endpoint =
         Prop.computed __type __id
           "ignore_missing_vnet_service_endpoint";
       name = Prop.computed __type __id "name";
       server_id = Prop.computed __type __id "server_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_virtual_network_rule
        (azurerm_mssql_virtual_network_rule ?id
           ?ignore_missing_vnet_service_endpoint ?timeouts ~name
           ~server_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ignore_missing_vnet_service_endpoint
    ?timeouts ~name ~server_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ignore_missing_vnet_service_endpoint ?timeouts ~name
      ~server_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
