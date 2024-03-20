(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_group_user = {
  api_management_name : string prop;  (** api_management_name *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_id : string prop;  (** user_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_group_user *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_group_user ?id ?timeouts
    ~api_management_name ~group_name ~resource_group_name ~user_id ()
    : azurerm_api_management_group_user =
  {
    api_management_name;
    group_name;
    id;
    resource_group_name;
    user_id;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  group_name : string prop;
  id : string prop;
  resource_group_name : string prop;
  user_id : string prop;
}

let make ?id ?timeouts ~api_management_name ~group_name
    ~resource_group_name ~user_id __id =
  let __type = "azurerm_api_management_group_user" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_group_user
        (azurerm_api_management_group_user ?id ?timeouts
           ~api_management_name ~group_name ~resource_group_name
           ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_name
    ~group_name ~resource_group_name ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_name ~group_name
      ~resource_group_name ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
