(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type site = {
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_parameters_enabled : bool prop option; [@option]
      (** endpoint_parameters_enabled *)
  enhanced_authentication_enabled : bool prop option; [@option]
      (** enhanced_authentication_enabled *)
  name : string prop;  (** name *)
  storage_enabled : bool prop option; [@option]
      (** storage_enabled *)
  trusted_origins : string prop list option; [@option]
      (** trusted_origins *)
  user_upload_enabled : bool prop option; [@option]
      (** user_upload_enabled *)
  v1_allowed : bool prop option; [@option]  (** v1_allowed *)
  v3_allowed : bool prop option; [@option]  (** v3_allowed *)
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

type azurerm_bot_channel_directline = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  site : site list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline *)

let site ?enabled ?endpoint_parameters_enabled
    ?enhanced_authentication_enabled ?storage_enabled
    ?trusted_origins ?user_upload_enabled ?v1_allowed ?v3_allowed
    ~name () : site =
  {
    enabled;
    endpoint_parameters_enabled;
    enhanced_authentication_enabled;
    name;
    storage_enabled;
    trusted_origins;
    user_upload_enabled;
    v1_allowed;
    v3_allowed;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_directline ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~site () : azurerm_bot_channel_directline =
  { bot_name; id; location; resource_group_name; site; timeouts }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~bot_name ~location ~resource_group_name ~site
    __id =
  let __type = "azurerm_bot_channel_directline" in
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
      yojson_of_azurerm_bot_channel_directline
        (azurerm_bot_channel_directline ?id ?timeouts ~bot_name
           ~location ~resource_group_name ~site ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~site __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~location ~resource_group_name ~site
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
