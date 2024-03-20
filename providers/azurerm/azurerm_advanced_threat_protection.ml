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

type azurerm_advanced_threat_protection = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_advanced_threat_protection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_advanced_threat_protection ?id ?timeouts ~enabled
    ~target_resource_id () : azurerm_advanced_threat_protection =
  { enabled; id; target_resource_id; timeouts }

type t = {
  enabled : bool prop;
  id : string prop;
  target_resource_id : string prop;
}

let make ?id ?timeouts ~enabled ~target_resource_id __id =
  let __type = "azurerm_advanced_threat_protection" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       target_resource_id =
         Prop.computed __type __id "target_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_advanced_threat_protection
        (azurerm_advanced_threat_protection ?id ?timeouts ~enabled
           ~target_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~enabled ~target_resource_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~enabled ~target_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
