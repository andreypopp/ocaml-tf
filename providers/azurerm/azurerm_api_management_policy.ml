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

type azurerm_api_management_policy = {
  api_management_id : string prop;  (** api_management_id *)
  id : string prop option; [@option]  (** id *)
  xml_content : string prop option; [@option]  (** xml_content *)
  xml_link : string prop option; [@option]  (** xml_link *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_policy ?id ?xml_content ?xml_link
    ?timeouts ~api_management_id () : azurerm_api_management_policy =
  { api_management_id; id; xml_content; xml_link; timeouts }

type t = {
  api_management_id : string prop;
  id : string prop;
  xml_content : string prop;
  xml_link : string prop;
}

let make ?id ?xml_content ?xml_link ?timeouts ~api_management_id __id
    =
  let __type = "azurerm_api_management_policy" in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       id = Prop.computed __type __id "id";
       xml_content = Prop.computed __type __id "xml_content";
       xml_link = Prop.computed __type __id "xml_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_policy
        (azurerm_api_management_policy ?id ?xml_content ?xml_link
           ?timeouts ~api_management_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?xml_content ?xml_link ?timeouts
    ~api_management_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?xml_content ?xml_link ?timeouts ~api_management_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
