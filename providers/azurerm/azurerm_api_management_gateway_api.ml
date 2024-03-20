(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_gateway_api = {
  api_id : string prop;  (** api_id *)
  gateway_id : string prop;  (** gateway_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_api *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_gateway_api ?id ?timeouts ~api_id
    ~gateway_id () : azurerm_api_management_gateway_api =
  { api_id; gateway_id; id; timeouts }

type t = {
  api_id : string prop;
  gateway_id : string prop;
  id : string prop;
}

let make ?id ?timeouts ~api_id ~gateway_id __id =
  let __type = "azurerm_api_management_gateway_api" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       gateway_id = Prop.computed __type __id "gateway_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_gateway_api
        (azurerm_api_management_gateway_api ?id ?timeouts ~api_id
           ~gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_id ~gateway_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_id ~gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
