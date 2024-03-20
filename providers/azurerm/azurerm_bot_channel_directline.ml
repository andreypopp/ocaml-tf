(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type site = {
  enabled : bool prop option; [@option]
  endpoint_parameters_enabled : bool prop option; [@option]
  enhanced_authentication_enabled : bool prop option; [@option]
  name : string prop;
  storage_enabled : bool prop option; [@option]
  trusted_origins : string prop list option; [@option]
  user_upload_enabled : bool prop option; [@option]
  v1_allowed : bool prop option; [@option]
  v3_allowed : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : site) -> ()

let yojson_of_site =
  (function
   | {
       enabled = v_enabled;
       endpoint_parameters_enabled = v_endpoint_parameters_enabled;
       enhanced_authentication_enabled =
         v_enhanced_authentication_enabled;
       name = v_name;
       storage_enabled = v_storage_enabled;
       trusted_origins = v_trusted_origins;
       user_upload_enabled = v_user_upload_enabled;
       v1_allowed = v_v1_allowed;
       v3_allowed = v_v3_allowed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_v3_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "v3_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_v1_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "v1_allowed", arg in
             bnd :: bnds
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
         match v_trusted_origins with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "trusted_origins", arg in
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
         match v_enhanced_authentication_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enhanced_authentication_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_parameters_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "endpoint_parameters_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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

type azurerm_bot_channel_directline = {
  bot_name : string prop;
  id : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  site : site list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_directline) -> ()

let yojson_of_azurerm_bot_channel_directline =
  (function
   | {
       bot_name = v_bot_name;
       id = v_id;
       location = v_location;
       resource_group_name = v_resource_group_name;
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
    : azurerm_bot_channel_directline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_directline

[@@@deriving.end]

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
