(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type authentication = {
  audience : string prop;
  authority : string prop;
  smart_proxy_enabled : bool prop;
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
         let arg =
           yojson_of_prop yojson_of_bool v_smart_proxy_enabled
         in
         ("smart_proxy_enabled", arg) :: bnds
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
      [@default []] [@yojson_drop_default ( = )]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  credentials_allowed : bool prop;
  max_age_in_seconds : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_max_age_in_seconds
         in
         ("max_age_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_credentials_allowed
         in
         ("credentials_allowed", arg) :: bnds
       in
       let bnds =
         if [] = v_allowed_origins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_origins
           in
           let bnd = "allowed_origins", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allowed_methods then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_methods
           in
           let bnd = "allowed_methods", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_allowed_headers then bnds
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
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_healthcare_fhir_service = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_healthcare_fhir_service) -> ()

let yojson_of_azurerm_healthcare_fhir_service =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_healthcare_fhir_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_healthcare_fhir_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_healthcare_fhir_service ?id ?tags ?timeouts ~name
    ~workspace_id () : azurerm_healthcare_fhir_service =
  { id; name; tags; workspace_id; timeouts }

type t = {
  tf_name : string;
  access_policy_object_ids : string list prop;
  authentication : authentication list prop;
  configuration_export_storage_account_name : string prop;
  container_registry_login_server_url : string list prop;
  cors : cors list prop;
  id : string prop;
  identity : identity list prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?tags ?timeouts ~name ~workspace_id __id =
  let __type = "azurerm_healthcare_fhir_service" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       authentication = Prop.computed __type __id "authentication";
       configuration_export_storage_account_name =
         Prop.computed __type __id
           "configuration_export_storage_account_name";
       container_registry_login_server_url =
         Prop.computed __type __id
           "container_registry_login_server_url";
       cors = Prop.computed __type __id "cors";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
        (azurerm_healthcare_fhir_service ?id ?tags ?timeouts ~name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~name ~workspace_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~name ~workspace_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
