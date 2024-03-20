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

type azurerm_management_group = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  parent_management_group_id : string prop option; [@option]
      (** parent_management_group_id *)
  subscription_ids : string prop list option; [@option]
      (** subscription_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_management_group ?display_name ?id ?name
    ?parent_management_group_id ?subscription_ids ?timeouts () :
    azurerm_management_group =
  {
    display_name;
    id;
    name;
    parent_management_group_id;
    subscription_ids;
    timeouts;
  }

type t = {
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_management_group_id : string prop;
  subscription_ids : string list prop;
}

let make ?display_name ?id ?name ?parent_management_group_id
    ?subscription_ids ?timeouts __id =
  let __type = "azurerm_management_group" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_management_group_id =
         Prop.computed __type __id "parent_management_group_id";
       subscription_ids =
         Prop.computed __type __id "subscription_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_management_group
        (azurerm_management_group ?display_name ?id ?name
           ?parent_management_group_id ?subscription_ids ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?name
    ?parent_management_group_id ?subscription_ids ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?name ?parent_management_group_id
      ?subscription_ids ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
