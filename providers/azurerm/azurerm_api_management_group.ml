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

type azurerm_api_management_group = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  external_id : string prop option; [@option]  (** external_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_group ?description ?external_id ?id ?type_
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name () : azurerm_api_management_group =
  {
    api_management_name;
    description;
    display_name;
    external_id;
    id;
    name;
    resource_group_name;
    type_;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  external_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  type_ : string prop;
}

let make ?description ?external_id ?id ?type_ ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    __id =
  let __type = "azurerm_api_management_group" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       external_id = Prop.computed __type __id "external_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_group
        (azurerm_api_management_group ?description ?external_id ?id
           ?type_ ?timeouts ~api_management_name ~display_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?external_id ?id ?type_
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?external_id ?id ?type_ ?timeouts
      ~api_management_name ~display_name ~name ~resource_group_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
