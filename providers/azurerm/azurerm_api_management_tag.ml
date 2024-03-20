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

type azurerm_api_management_tag = {
  api_management_id : string prop;  (** api_management_id *)
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_tag *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_tag ?display_name ?id ?timeouts
    ~api_management_id ~name () : azurerm_api_management_tag =
  { api_management_id; display_name; id; name; timeouts }

type t = {
  api_management_id : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?display_name ?id ?timeouts ~api_management_id ~name __id =
  let __type = "azurerm_api_management_tag" in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_tag
        (azurerm_api_management_tag ?display_name ?id ?timeouts
           ~api_management_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts
    ~api_management_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~api_management_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
