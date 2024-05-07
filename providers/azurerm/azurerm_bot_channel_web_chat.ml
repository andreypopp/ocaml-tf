(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type site = {
  endpoint_parameters_enabled : bool prop option; [@option]
  name : string prop;
  storage_enabled : bool prop option; [@option]
  user_upload_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site) -> ()

let yojson_of_site =
  (function
   | {
       endpoint_parameters_enabled = v_endpoint_parameters_enabled;
       name = v_name;
       storage_enabled = v_storage_enabled;
       user_upload_enabled = v_user_upload_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_upload_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_upload_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "storage_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_endpoint_parameters_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "endpoint_parameters_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : site -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_site

[@@@deriving.end]

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

type azurerm_bot_channel_web_chat = {
  bot_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  site_names : string prop list option; [@option]
  site : site list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_web_chat) -> ()

let yojson_of_azurerm_bot_channel_web_chat =
  (function
   | {
       bot_name = v_bot_name;
       id = v_id;
       location = v_location;
       resource_group_name = v_resource_group_name;
       site_names = v_site_names;
       site = v_site;
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
         let arg = yojson_of_list yojson_of_site v_site in
         ("site", arg) :: bnds
       in
       let bnds =
         match v_site_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "site_names", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_web_chat ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_web_chat

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
