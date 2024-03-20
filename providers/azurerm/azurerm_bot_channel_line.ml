(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type line_channel = {
  access_token : string prop;  (** access_token *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]
(** line_channel *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channel_line = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  line_channel : line_channel list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line *)

let line_channel ~access_token ~secret () : line_channel =
  { access_token; secret }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_line ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~line_channel () : azurerm_bot_channel_line
    =
  {
    bot_name;
    id;
    location;
    resource_group_name;
    line_channel;
    timeouts;
  }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~bot_name ~location ~resource_group_name
    ~line_channel __id =
  let __type = "azurerm_bot_channel_line" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_line
        (azurerm_bot_channel_line ?id ?timeouts ~bot_name ~location
           ~resource_group_name ~line_channel ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~line_channel __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~location ~resource_group_name
      ~line_channel __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
