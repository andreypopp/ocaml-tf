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

type azurerm_bot_channel_slack = {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop option; [@option]
  landing_page_url : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  signing_secret : string prop option; [@option]
  verification_token : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_slack) -> ()

let yojson_of_azurerm_bot_channel_slack =
  (function
   | {
       bot_name = v_bot_name;
       client_id = v_client_id;
       client_secret = v_client_secret;
       id = v_id;
       landing_page_url = v_landing_page_url;
       location = v_location;
       resource_group_name = v_resource_group_name;
       signing_secret = v_signing_secret;
       verification_token = v_verification_token;
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
           yojson_of_prop yojson_of_string v_verification_token
         in
         ("verification_token", arg) :: bnds
       in
       let bnds =
         match v_signing_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "signing_secret", arg in
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
         match v_landing_page_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "landing_page_url", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_slack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_slack

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_slack ?id ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token () :
    azurerm_bot_channel_slack =
  {
    bot_name;
    client_id;
    client_secret;
    id;
    landing_page_url;
    location;
    resource_group_name;
    signing_secret;
    verification_token;
    timeouts;
  }

type t = {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  landing_page_url : string prop;
  location : string prop;
  resource_group_name : string prop;
  signing_secret : string prop;
  verification_token : string prop;
}

let make ?id ?landing_page_url ?signing_secret ?timeouts ~bot_name
    ~client_id ~client_secret ~location ~resource_group_name
    ~verification_token __id =
  let __type = "azurerm_bot_channel_slack" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       landing_page_url =
         Prop.computed __type __id "landing_page_url";
       location = Prop.computed __type __id "location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       signing_secret = Prop.computed __type __id "signing_secret";
       verification_token =
         Prop.computed __type __id "verification_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_slack
        (azurerm_bot_channel_slack ?id ?landing_page_url
           ?signing_secret ?timeouts ~bot_name ~client_id
           ~client_secret ~location ~resource_group_name
           ~verification_token ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token __id =
  let (r : _ Tf_core.resource) =
    make ?id ?landing_page_url ?signing_secret ?timeouts ~bot_name
      ~client_id ~client_secret ~location ~resource_group_name
      ~verification_token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
