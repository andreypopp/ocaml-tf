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

type azurerm_bot_channel_alexa = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  skill_id : string prop;  (** skill_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_alexa *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_alexa ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~skill_id () : azurerm_bot_channel_alexa =
  { bot_name; id; location; resource_group_name; skill_id; timeouts }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  skill_id : string prop;
}

let make ?id ?timeouts ~bot_name ~location ~resource_group_name
    ~skill_id __id =
  let __type = "azurerm_bot_channel_alexa" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       skill_id = Prop.computed __type __id "skill_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_alexa
        (azurerm_bot_channel_alexa ?id ?timeouts ~bot_name ~location
           ~resource_group_name ~skill_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~skill_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~location ~resource_group_name
      ~skill_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
