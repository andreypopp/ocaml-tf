(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type basic_auth = {
  environments : string prop;
  password : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : basic_auth) -> ()

let yojson_of_basic_auth =
  (function
   | { environments = v_environments; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_environments in
         ("environments", arg) :: bnds
       in
       `Assoc bnds
    : basic_auth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_basic_auth

[@@@deriving.end]

type identity = {
  identity_ids : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_identity_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identity_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

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

type azurerm_static_web_app = {
  app_settings : (string * string prop) list option; [@option]
  configuration_file_changes_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  preview_environments_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku_size : string prop option; [@option]
  sku_tier : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  basic_auth : basic_auth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_static_web_app) -> ()

let yojson_of_azurerm_static_web_app =
  (function
   | {
       app_settings = v_app_settings;
       configuration_file_changes_enabled =
         v_configuration_file_changes_enabled;
       id = v_id;
       location = v_location;
       name = v_name;
       preview_environments_enabled = v_preview_environments_enabled;
       resource_group_name = v_resource_group_name;
       sku_size = v_sku_size;
       sku_tier = v_sku_tier;
       tags = v_tags;
       basic_auth = v_basic_auth;
       identity = v_identity;
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
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_basic_auth then bnds
         else
           let arg =
             (yojson_of_list yojson_of_basic_auth) v_basic_auth
           in
           let bnd = "basic_auth", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_tier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sku_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sku_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_preview_environments_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preview_environments_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_configuration_file_changes_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "configuration_file_changes_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_app_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "app_settings", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_static_web_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_static_web_app

[@@@deriving.end]

let basic_auth ~environments ~password () : basic_auth =
  { environments; password }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_static_web_app ?app_settings
    ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags
    ?(basic_auth = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name () : azurerm_static_web_app =
  {
    app_settings;
    configuration_file_changes_enabled;
    id;
    location;
    name;
    preview_environments_enabled;
    resource_group_name;
    sku_size;
    sku_tier;
    tags;
    basic_auth;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  api_key : string prop;
  app_settings : (string * string) list prop;
  configuration_file_changes_enabled : bool prop;
  default_host_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  preview_environments_enabled : bool prop;
  resource_group_name : string prop;
  sku_size : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

let make ?app_settings ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags
    ?(basic_auth = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_static_web_app" in
  let __attrs =
    ({
       tf_name = __id;
       api_key = Prop.computed __type __id "api_key";
       app_settings = Prop.computed __type __id "app_settings";
       configuration_file_changes_enabled =
         Prop.computed __type __id
           "configuration_file_changes_enabled";
       default_host_name =
         Prop.computed __type __id "default_host_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       preview_environments_enabled =
         Prop.computed __type __id "preview_environments_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_size = Prop.computed __type __id "sku_size";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_static_web_app
        (azurerm_static_web_app ?app_settings
           ?configuration_file_changes_enabled ?id
           ?preview_environments_enabled ?sku_size ?sku_tier ?tags
           ~basic_auth ~identity ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?app_settings
    ?configuration_file_changes_enabled ?id
    ?preview_environments_enabled ?sku_size ?sku_tier ?tags
    ?(basic_auth = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?app_settings ?configuration_file_changes_enabled ?id
      ?preview_environments_enabled ?sku_size ?sku_tier ?tags
      ~basic_auth ~identity ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
