(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication = {
  audience : string prop;
  authority : string prop;
  smart_proxy_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication) -> ()

let yojson_of_authentication =
  (function
   | {
       audience = v_audience;
       authority = v_authority;
       smart_proxy_enabled = v_smart_proxy_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_smart_proxy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smart_proxy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_authority in
         ("authority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audience in
         ("audience", arg) :: bnds
       in
       `Assoc bnds
    : authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication

[@@@deriving.end]

type cors = {
  allowed_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  credentials_allowed : bool prop option; [@option]
  max_age_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors) -> ()

let yojson_of_cors =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       credentials_allowed = v_credentials_allowed;
       max_age_in_seconds = v_max_age_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_credentials_allowed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "credentials_allowed", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_headers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_headers
           in
           let bnd = "allowed_headers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : cors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors

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

type oci_artifact = {
  digest : string prop option; [@option]
  image_name : string prop option; [@option]
  login_server : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oci_artifact) -> ()

let yojson_of_oci_artifact =
  (function
   | {
       digest = v_digest;
       image_name = v_image_name;
       login_server = v_login_server;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login_server in
         ("login_server", arg) :: bnds
       in
       let bnds =
         match v_image_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : oci_artifact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oci_artifact

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

type azurerm_healthcare_fhir_service = {
  access_policy_object_ids : string prop list option; [@option]
  configuration_export_storage_account_name : string prop option;
      [@option]
  container_registry_login_server_url : string prop list option;
      [@option]
  id : string prop option; [@option]
  kind : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  workspace_id : string prop;
  authentication : authentication list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cors : cors list; [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oci_artifact : oci_artifact list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_healthcare_fhir_service) -> ()

let yojson_of_azurerm_healthcare_fhir_service =
  (function
   | {
       access_policy_object_ids = v_access_policy_object_ids;
       configuration_export_storage_account_name =
         v_configuration_export_storage_account_name;
       container_registry_login_server_url =
         v_container_registry_login_server_url;
       id = v_id;
       kind = v_kind;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       workspace_id = v_workspace_id;
       authentication = v_authentication;
       cors = v_cors;
       identity = v_identity;
       oci_artifact = v_oci_artifact;
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
         if Stdlib.( = ) [] v_oci_artifact then bnds
         else
           let arg =
             (yojson_of_list yojson_of_oci_artifact) v_oci_artifact
           in
           let bnd = "oci_artifact", arg in
           bnd :: bnds
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
         if Stdlib.( = ) [] v_cors then bnds
         else
           let arg = (yojson_of_list yojson_of_cors) v_cors in
           let bnd = "cors", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_authentication then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authentication)
               v_authentication
           in
           let bnd = "authentication", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_kind with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kind", arg in
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
         match v_container_registry_login_server_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "container_registry_login_server_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_export_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "configuration_export_storage_account_name", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_access_policy_object_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access_policy_object_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_healthcare_fhir_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_healthcare_fhir_service

[@@@deriving.end]

let authentication ?smart_proxy_enabled ~audience ~authority () :
    authentication =
  { audience; authority; smart_proxy_enabled }

let cors ?credentials_allowed ?max_age_in_seconds ~allowed_headers
    ~allowed_methods ~allowed_origins () : cors =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    credentials_allowed;
    max_age_in_seconds;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let oci_artifact ?digest ?image_name ~login_server () : oci_artifact
    =
  { digest; image_name; login_server }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_fhir_service ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?(cors = [])
    ?(identity = []) ?(oci_artifact = []) ?timeouts ~location ~name
    ~resource_group_name ~workspace_id ~authentication () :
    azurerm_healthcare_fhir_service =
  {
    access_policy_object_ids;
    configuration_export_storage_account_name;
    container_registry_login_server_url;
    id;
    kind;
    location;
    name;
    resource_group_name;
    tags;
    workspace_id;
    authentication;
    cors;
    identity;
    oci_artifact;
    timeouts;
  }

type t = {
  tf_name : string;
  access_policy_object_ids : string list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  workspace_id : string prop;
}

let make ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?(cors = [])
    ?(identity = []) ?(oci_artifact = []) ?timeouts ~location ~name
    ~resource_group_name ~workspace_id ~authentication __id =
  let __type = "azurerm_healthcare_fhir_service" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       configuration_export_storage_account_name =
         Prop.computed __type __id
           "configuration_export_storage_account_name";
       container_registry_login_server_url =
         Prop.computed __type __id
           "container_registry_login_server_url";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_fhir_service
        (azurerm_healthcare_fhir_service ?access_policy_object_ids
           ?configuration_export_storage_account_name
           ?container_registry_login_server_url ?id ?kind ?tags ~cors
           ~identity ~oci_artifact ?timeouts ~location ~name
           ~resource_group_name ~workspace_id ~authentication ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy_object_ids
    ?configuration_export_storage_account_name
    ?container_registry_login_server_url ?id ?kind ?tags ?(cors = [])
    ?(identity = []) ?(oci_artifact = []) ?timeouts ~location ~name
    ~resource_group_name ~workspace_id ~authentication __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy_object_ids
      ?configuration_export_storage_account_name
      ?container_registry_login_server_url ?id ?kind ?tags ~cors
      ~identity ~oci_artifact ?timeouts ~location ~name
      ~resource_group_name ~workspace_id ~authentication __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
