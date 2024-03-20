(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_product_api = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  id : string prop option; [@option]  (** id *)
  product_id : string prop;  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_api *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_product_api ?id ?timeouts
    ~api_management_name ~api_name ~product_id ~resource_group_name
    () : azurerm_api_management_product_api =
  {
    api_management_name;
    api_name;
    id;
    product_id;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  api_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~api_management_name ~api_name ~product_id
    ~resource_group_name __id =
  let __type = "azurerm_api_management_product_api" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       api_name = Prop.computed __type __id "api_name";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_product_api
        (azurerm_api_management_product_api ?id ?timeouts
           ~api_management_name ~api_name ~product_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name ~api_name
    ~product_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~api_name ~product_id
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
