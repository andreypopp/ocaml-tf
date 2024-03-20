(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_express_route_circuit_authorization = {
  express_route_circuit_name : string prop;
      (** express_route_circuit_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_express_route_circuit_authorization *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_express_route_circuit_authorization ?id ?timeouts
    ~express_route_circuit_name ~name ~resource_group_name () :
    azurerm_express_route_circuit_authorization =
  {
    express_route_circuit_name;
    id;
    name;
    resource_group_name;
    timeouts;
  }

type t = {
  authorization_key : string prop;
  authorization_use_status : string prop;
  express_route_circuit_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~express_route_circuit_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_express_route_circuit_authorization" in
  let __attrs =
    ({
       authorization_key =
         Prop.computed __type __id "authorization_key";
       authorization_use_status =
         Prop.computed __type __id "authorization_use_status";
       express_route_circuit_name =
         Prop.computed __type __id "express_route_circuit_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_express_route_circuit_authorization
        (azurerm_express_route_circuit_authorization ?id ?timeouts
           ~express_route_circuit_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~express_route_circuit_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~express_route_circuit_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
