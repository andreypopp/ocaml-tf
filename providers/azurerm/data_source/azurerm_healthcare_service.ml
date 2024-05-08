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

type authentication_configuration = {
  audience : string prop;
  authority : string prop;
  smart_proxy_enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_configuration) -> ()

let yojson_of_authentication_configuration =
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
    : authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_configuration

[@@@deriving.end]

type cors_configuration = {
  allow_credentials : bool prop;
  allowed_headers : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_methods : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  allowed_origins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_age_in_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_configuration) -> ()

let yojson_of_cors_configuration =
  (function
   | {
       allow_credentials = v_allow_credentials;
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_allow_credentials
         in
         ("allow_credentials", arg) :: bnds
       in
       `Assoc bnds
    : cors_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_configuration

[@@@deriving.end]

type azurerm_healthcare_service = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_healthcare_service) -> ()

let yojson_of_azurerm_healthcare_service =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
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
       `Assoc bnds
    : azurerm_healthcare_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_healthcare_service

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_healthcare_service ?id ?timeouts ~location ~name
    ~resource_group_name () : azurerm_healthcare_service =
  { id; location; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  access_policy_object_ids : string list prop;
  authentication_configuration :
    authentication_configuration list prop;
  cors_configuration : cors_configuration list prop;
  cosmosdb_key_vault_key_versionless_id : string prop;
  cosmosdb_throughput : float prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~location ~name ~resource_group_name __id =
  let __type = "azurerm_healthcare_service" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy_object_ids =
         Prop.computed __type __id "access_policy_object_ids";
       authentication_configuration =
         Prop.computed __type __id "authentication_configuration";
       cors_configuration =
         Prop.computed __type __id "cors_configuration";
       cosmosdb_key_vault_key_versionless_id =
         Prop.computed __type __id
           "cosmosdb_key_vault_key_versionless_id";
       cosmosdb_throughput =
         Prop.computed __type __id "cosmosdb_throughput";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_service
        (azurerm_healthcare_service ?id ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
