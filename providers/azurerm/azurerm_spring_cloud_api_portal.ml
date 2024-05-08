(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sso = {
  client_id : string prop option; [@option]
  client_secret : string prop option; [@option]
  issuer_uri : string prop option; [@option]
  scope : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sso) -> ()

let yojson_of_sso =
  (function
   | {
       client_id = v_client_id;
       client_secret = v_client_secret;
       issuer_uri = v_issuer_uri;
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
         match v_issuer_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issuer_uri", arg in
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

type azurerm_spring_cloud_api_portal = {
  api_try_out_enabled : bool prop option; [@option]
  gateway_ids : string prop list option; [@option]
  https_only_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  instance_count : float prop option; [@option]
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  spring_cloud_service_id : string prop;
  sso : sso list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_api_portal) -> ()

let yojson_of_azurerm_spring_cloud_api_portal =
  (function
   | {
       api_try_out_enabled = v_api_try_out_enabled;
       gateway_ids = v_gateway_ids;
       https_only_enabled = v_https_only_enabled;
       id = v_id;
       instance_count = v_instance_count;
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
         if Stdlib.( = ) [] v_sso then bnds
         else
           let arg = (yojson_of_list yojson_of_sso) v_sso in
           let bnd = "sso", arg in
           bnd :: bnds
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
         match v_instance_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "instance_count", arg in
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
         match v_https_only_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "https_only_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gateway_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "gateway_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_try_out_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "api_try_out_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_api_portal ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_api_portal

[@@@deriving.end]

let sso ?client_id ?client_secret ?issuer_uri ?scope () : sso =
  { client_id; client_secret; issuer_uri; scope }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_api_portal ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?id ?instance_count
    ?public_network_access_enabled ?(sso = []) ?timeouts ~name
    ~spring_cloud_service_id () : azurerm_spring_cloud_api_portal =
  {
    api_try_out_enabled;
    gateway_ids;
    https_only_enabled;
    id;
    instance_count;
    name;
    public_network_access_enabled;
    spring_cloud_service_id;
    sso;
    timeouts;
  }

type t = {
  tf_name : string;
  api_try_out_enabled : bool prop;
  gateway_ids : string list prop;
  https_only_enabled : bool prop;
  id : string prop;
  instance_count : float prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  spring_cloud_service_id : string prop;
  url : string prop;
}

let make ?api_try_out_enabled ?gateway_ids ?https_only_enabled ?id
    ?instance_count ?public_network_access_enabled ?(sso = [])
    ?timeouts ~name ~spring_cloud_service_id __id =
  let __type = "azurerm_spring_cloud_api_portal" in
  let __attrs =
    ({
       tf_name = __id;
       api_try_out_enabled =
         Prop.computed __type __id "api_try_out_enabled";
       gateway_ids = Prop.computed __type __id "gateway_ids";
       https_only_enabled =
         Prop.computed __type __id "https_only_enabled";
       id = Prop.computed __type __id "id";
       instance_count = Prop.computed __type __id "instance_count";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       spring_cloud_service_id =
         Prop.computed __type __id "spring_cloud_service_id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_api_portal
        (azurerm_spring_cloud_api_portal ?api_try_out_enabled
           ?gateway_ids ?https_only_enabled ?id ?instance_count
           ?public_network_access_enabled ~sso ?timeouts ~name
           ~spring_cloud_service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?id ?instance_count
    ?public_network_access_enabled ?(sso = []) ?timeouts ~name
    ~spring_cloud_service_id __id =
  let (r : _ Tf_core.resource) =
    make ?api_try_out_enabled ?gateway_ids ?https_only_enabled ?id
      ?instance_count ?public_network_access_enabled ~sso ?timeouts
      ~name ~spring_cloud_service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
