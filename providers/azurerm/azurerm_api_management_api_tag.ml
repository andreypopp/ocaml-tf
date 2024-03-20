(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_api_tag = {
  api_id : string prop;  (** api_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_api_management_api_tag ?id ?timeouts ~api_id ~name () :
    azurerm_api_management_api_tag =
  { api_id; id; name; timeouts }

type t = {
  api_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~api_id ~name __id =
  let __type = "azurerm_api_management_api_tag" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_api_tag
        (azurerm_api_management_api_tag ?id ?timeouts ~api_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
