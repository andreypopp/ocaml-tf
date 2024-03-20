(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sso = {
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  metadata_url : string prop option; [@option]
  scope : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sso) -> ()

let yojson_of_sso =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       metadata_url = v_metadata_url;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sso -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sso

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

type azurerm_spring_cloud_dev_tool_portal = {
  application_accelerator_enabled : bool prop option; [@option]
  application_live_view_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  spring_cloud_service_id : string prop;
  sso : sso list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_dev_tool_portal) -> ()

let yojson_of_azurerm_spring_cloud_dev_tool_portal =
  (function
   | {
       application_accelerator_enabled =
         v_application_accelerator_enabled;
       application_live_view_enabled =
         v_application_live_view_enabled;
       id = v_id;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       spring_cloud_service_id = v_spring_cloud_service_id;
       sso = v_sso;
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
         let arg = yojson_of_list yojson_of_sso v_sso in
         ("sso", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_service_id
         in
         ("spring_cloud_service_id", arg) :: bnds
       in
       let bnds =
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_application_live_view_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "application_live_view_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_accelerator_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "application_accelerator_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_dev_tool_portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_dev_tool_portal

[@@@deriving.end]

let sso ?client_id ?client_secret ?metadata_url ?scope () : sso =
  { client_id; client_secret; metadata_url; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_dev_tool_portal
    ?application_accelerator_enabled ?application_live_view_enabled
    ?id ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso () :
    azurerm_spring_cloud_dev_tool_portal =
  {
    application_accelerator_enabled;
    application_live_view_enabled;
    id;
    name;
    public_network_access_enabled;
    spring_cloud_service_id;
    sso;
    timeouts;
  }

type t = {
  application_accelerator_enabled : bool prop;
  application_live_view_enabled : bool prop;
  id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  spring_cloud_service_id : string prop;
}

let make ?application_accelerator_enabled
    ?application_live_view_enabled ?id ?public_network_access_enabled
    ?timeouts ~name ~spring_cloud_service_id ~sso __id =
  let __type = "azurerm_spring_cloud_dev_tool_portal" in
  let __attrs =
    ({
       application_accelerator_enabled =
         Prop.computed __type __id "application_accelerator_enabled";
       application_live_view_enabled =
         Prop.computed __type __id "application_live_view_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_dev_tool_portal
        (azurerm_spring_cloud_dev_tool_portal
           ?application_accelerator_enabled
           ?application_live_view_enabled ?id
           ?public_network_access_enabled ?timeouts ~name
           ~spring_cloud_service_id ~sso ());
    attrs = __attrs;
  }

let register ?tf_module ?application_accelerator_enabled
    ?application_live_view_enabled ?id ?public_network_access_enabled
    ?timeouts ~name ~spring_cloud_service_id ~sso __id =
  let (r : _ Tf_core.resource) =
    make ?application_accelerator_enabled
      ?application_live_view_enabled ?id
      ?public_network_access_enabled ?timeouts ~name
      ~spring_cloud_service_id ~sso __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
