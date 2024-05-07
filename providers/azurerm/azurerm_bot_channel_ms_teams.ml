(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_bot_channel_ms_teams = {
  bot_name : string prop;
  calling_web_hook : string prop option; [@option]
  deployment_environment : string prop option; [@option]
  enable_calling : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_ms_teams) -> ()

let yojson_of_azurerm_bot_channel_ms_teams =
  (function
   | {
       bot_name = v_bot_name;
       calling_web_hook = v_calling_web_hook;
       deployment_environment = v_deployment_environment;
       enable_calling = v_enable_calling;
       id = v_id;
       location = v_location;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_calling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_calling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deployment_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deployment_environment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_calling_web_hook with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "calling_web_hook", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_ms_teams ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_ms_teams

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
