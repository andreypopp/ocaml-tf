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

type azurerm_security_center_auto_provisioning = {
  auto_provision : string prop;  (** auto_provision *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_auto_provisioning *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_auto_provisioning ?id ?timeouts
    ~auto_provision () : azurerm_security_center_auto_provisioning =
  { auto_provision; id; timeouts }

type t = { auto_provision : string prop; id : string prop }

let make ?id ?timeouts ~auto_provision __id =
  let __type = "azurerm_security_center_auto_provisioning" in
  let __attrs =
    ({
       auto_provision = Prop.computed __type __id "auto_provision";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_auto_provisioning
        (azurerm_security_center_auto_provisioning ?id ?timeouts
           ~auto_provision ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~auto_provision __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~auto_provision __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
