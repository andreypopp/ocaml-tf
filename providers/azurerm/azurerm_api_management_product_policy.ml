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

type azurerm_api_management_product_policy = {
  api_management_name : string prop;  (** api_management_name *)
  id : string prop option; [@option]  (** id *)
  product_id : string prop;  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  xml_content : string prop option; [@option]  (** xml_content *)
  xml_link : string prop option; [@option]  (** xml_link *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_product_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_product_policy ?id ?xml_content ?xml_link
    ?timeouts ~api_management_name ~product_id ~resource_group_name
    () : azurerm_api_management_product_policy =
  {
    api_management_name;
    id;
    product_id;
    resource_group_name;
    xml_content;
    xml_link;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  id : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

let make ?id ?xml_content ?xml_link ?timeouts ~api_management_name
    ~product_id ~resource_group_name __id =
  let __type = "azurerm_api_management_product_policy" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       xml_content = Prop.computed __type __id "xml_content";
       xml_link = Prop.computed __type __id "xml_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_product_policy
        (azurerm_api_management_product_policy ?id ?xml_content
           ?xml_link ?timeouts ~api_management_name ~product_id
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?xml_content ?xml_link ?timeouts
    ~api_management_name ~product_id ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?xml_content ?xml_link ?timeouts ~api_management_name
      ~product_id ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
