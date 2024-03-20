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

type azurerm_logic_app_trigger_custom = {
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  logic_app_id : string prop;  (** logic_app_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_custom *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_custom ?id ?timeouts ~body
    ~logic_app_id ~name () : azurerm_logic_app_trigger_custom =
  { body; id; logic_app_id; name; timeouts }

type t = {
  body : string prop;
  id : string prop;
  logic_app_id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~body ~logic_app_id ~name __id =
  let __type = "azurerm_logic_app_trigger_custom" in
  let __attrs =
    ({
       body = Prop.computed __type __id "body";
       id = Prop.computed __type __id "id";
       logic_app_id = Prop.computed __type __id "logic_app_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_trigger_custom
        (azurerm_logic_app_trigger_custom ?id ?timeouts ~body
           ~logic_app_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~body ~logic_app_id ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~body ~logic_app_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
