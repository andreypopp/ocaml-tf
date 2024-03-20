(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type site = {
  endpoint_parameters_enabled : bool prop option; [@option]
      (** endpoint_parameters_enabled *)
  name : string prop;  (** name *)
  storage_enabled : bool prop option; [@option]
      (** storage_enabled *)
  user_upload_enabled : bool prop option; [@option]
      (** user_upload_enabled *)
}
[@@deriving yojson_of]
(** site *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channel_web_chat = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  site_names : string prop list option; [@option]  (** site_names *)
  site : site list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat *)

let site ?endpoint_parameters_enabled ?storage_enabled
    ?user_upload_enabled ~name () : site =
  {
    endpoint_parameters_enabled;
    name;
    storage_enabled;
    user_upload_enabled;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_web_chat ?id ?site_names ?timeouts ~bot_name
    ~location ~resource_group_name ~site () :
    azurerm_bot_channel_web_chat =
  {
    bot_name;
    id;
    location;
    resource_group_name;
    site_names;
    site;
    timeouts;
  }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  site_names : string list prop;
}

let make ?id ?site_names ?timeouts ~bot_name ~location
    ~resource_group_name ~site __id =
  let __type = "azurerm_bot_channel_web_chat" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       site_names = Prop.computed __type __id "site_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_web_chat
        (azurerm_bot_channel_web_chat ?id ?site_names ?timeouts
           ~bot_name ~location ~resource_group_name ~site ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?site_names ?timeouts ~bot_name ~location
    ~resource_group_name ~site __id =
  let (r : _ Tf_core.resource) =
    make ?id ?site_names ?timeouts ~bot_name ~location
      ~resource_group_name ~site __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
