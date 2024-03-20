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

type azurerm_bot_channel_ms_teams = {
  bot_name : string prop;  (** bot_name *)
  calling_web_hook : string prop option; [@option]
      (** calling_web_hook *)
  deployment_environment : string prop option; [@option]
      (** deployment_environment *)
  enable_calling : bool prop option; [@option]  (** enable_calling *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_ms_teams *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_ms_teams ?calling_web_hook
    ?deployment_environment ?enable_calling ?id ?timeouts ~bot_name
    ~location ~resource_group_name () : azurerm_bot_channel_ms_teams
    =
  {
    bot_name;
    calling_web_hook;
    deployment_environment;
    enable_calling;
    id;
    location;
    resource_group_name;
    timeouts;
  }

type t = {
  bot_name : string prop;
  calling_web_hook : string prop;
  deployment_environment : string prop;
  enable_calling : bool prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let make ?calling_web_hook ?deployment_environment ?enable_calling
    ?id ?timeouts ~bot_name ~location ~resource_group_name __id =
  let __type = "azurerm_bot_channel_ms_teams" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       calling_web_hook =
         Prop.computed __type __id "calling_web_hook";
       deployment_environment =
         Prop.computed __type __id "deployment_environment";
       enable_calling = Prop.computed __type __id "enable_calling";
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
      yojson_of_azurerm_bot_channel_ms_teams
        (azurerm_bot_channel_ms_teams ?calling_web_hook
           ?deployment_environment ?enable_calling ?id ?timeouts
           ~bot_name ~location ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?calling_web_hook ?deployment_environment
    ?enable_calling ?id ?timeouts ~bot_name ~location
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?calling_web_hook ?deployment_environment ?enable_calling
      ?id ?timeouts ~bot_name ~location ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
