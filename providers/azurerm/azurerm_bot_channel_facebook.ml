(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type page = { access_token : string prop; id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : page) -> ()

let yojson_of_page =
  (function
   | { access_token = v_access_token; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_token in
         ("access_token", arg) :: bnds
       in
       `Assoc bnds
    : page -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_page

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

type azurerm_bot_channel_facebook = {
  bot_name : string prop;
  facebook_application_id : string prop;
  facebook_application_secret : string prop;
  id : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  page : page list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_facebook) -> ()

let yojson_of_azurerm_bot_channel_facebook =
  (function
   | {
       bot_name = v_bot_name;
       facebook_application_id = v_facebook_application_id;
       facebook_application_secret = v_facebook_application_secret;
       id = v_id;
       location = v_location;
       resource_group_name = v_resource_group_name;
       page = v_page;
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
         if Stdlib.( = ) [] v_page then bnds
         else
           let arg = (yojson_of_list yojson_of_page) v_page in
           let bnd = "page", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_facebook_application_secret
         in
         ("facebook_application_secret", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_facebook_application_id
         in
         ("facebook_application_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_facebook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_facebook

[@@@deriving.end]

let page ~access_token ~id () : page = { access_token; id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page () : azurerm_bot_channel_facebook =
  {
    bot_name;
    facebook_application_id;
    facebook_application_secret;
    id;
    location;
    resource_group_name;
    page;
    timeouts;
  }

type t = {
  tf_name : string;
  bot_name : string prop;
  facebook_application_id : string prop;
  facebook_application_secret : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~bot_name ~facebook_application_id
    ~facebook_application_secret ~location ~resource_group_name ~page
    __id =
  let __type = "azurerm_bot_channel_facebook" in
  let __attrs =
    ({
       tf_name = __id;
       bot_name = Prop.computed __type __id "bot_name";
       facebook_application_id =
         Prop.computed __type __id "facebook_application_id";
       facebook_application_secret =
         Prop.computed __type __id "facebook_application_secret";
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
      yojson_of_azurerm_bot_channel_facebook
        (azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
           ~facebook_application_id ~facebook_application_secret
           ~location ~resource_group_name ~page ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~facebook_application_id
      ~facebook_application_secret ~location ~resource_group_name
      ~page __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
