(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_chaos_studio_target = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  target_resource_id : string prop;  (** target_resource_id *)
  target_type : string prop;  (** target_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_target *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_chaos_studio_target ?id ?timeouts ~location
    ~target_resource_id ~target_type () : azurerm_chaos_studio_target
    =
  { id; location; target_resource_id; target_type; timeouts }

type t = {
  id : string prop;
  location : string prop;
  target_resource_id : string prop;
  target_type : string prop;
}

let make ?id ?timeouts ~location ~target_resource_id ~target_type
    __id =
  let __type = "azurerm_chaos_studio_target" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
       target_type = Prop.computed __type __id "target_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_chaos_studio_target
        (azurerm_chaos_studio_target ?id ?timeouts ~location
           ~target_resource_id ~target_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~target_resource_id
    ~target_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~target_resource_id ~target_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
