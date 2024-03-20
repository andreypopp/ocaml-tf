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

type azurerm_security_center_setting = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  setting_name : string prop;  (** setting_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_setting *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_setting ?id ?timeouts ~enabled
    ~setting_name () : azurerm_security_center_setting =
  { enabled; id; setting_name; timeouts }

type t = {
  enabled : bool prop;
  id : string prop;
  setting_name : string prop;
}

let make ?id ?timeouts ~enabled ~setting_name __id =
  let __type = "azurerm_security_center_setting" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       setting_name = Prop.computed __type __id "setting_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_setting
        (azurerm_security_center_setting ?id ?timeouts ~enabled
           ~setting_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~enabled ~setting_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~enabled ~setting_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
