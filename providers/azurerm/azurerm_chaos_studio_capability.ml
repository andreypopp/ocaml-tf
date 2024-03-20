(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_chaos_studio_capability = {
  capability_type : string prop;  (** capability_type *)
  chaos_studio_target_id : string prop;
      (** chaos_studio_target_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_capability *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_chaos_studio_capability ?id ?timeouts ~capability_type
    ~chaos_studio_target_id () : azurerm_chaos_studio_capability =
  { capability_type; chaos_studio_target_id; id; timeouts }

type t = {
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop;
  urn : string prop;
}

let make ?id ?timeouts ~capability_type ~chaos_studio_target_id __id
    =
  let __type = "azurerm_chaos_studio_capability" in
  let __attrs =
    ({
       capability_type = Prop.computed __type __id "capability_type";
       chaos_studio_target_id =
         Prop.computed __type __id "chaos_studio_target_id";
       id = Prop.computed __type __id "id";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_chaos_studio_capability
        (azurerm_chaos_studio_capability ?id ?timeouts
           ~capability_type ~chaos_studio_target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~capability_type
    ~chaos_studio_target_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~capability_type ~chaos_studio_target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
