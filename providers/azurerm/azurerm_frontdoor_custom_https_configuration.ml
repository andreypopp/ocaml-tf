(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_https_configuration = {
  azure_key_vault_certificate_secret_name : string prop option;
      [@option]
  azure_key_vault_certificate_secret_version : string prop option;
      [@option]
  azure_key_vault_certificate_vault_id : string prop option;
      [@option]
  certificate_source : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_https_configuration) -> ()

let yojson_of_custom_https_configuration =
  (function
   | {
       azure_key_vault_certificate_secret_name =
         v_azure_key_vault_certificate_secret_name;
       azure_key_vault_certificate_secret_version =
         v_azure_key_vault_certificate_secret_version;
       azure_key_vault_certificate_vault_id =
         v_azure_key_vault_certificate_vault_id;
       certificate_source = v_certificate_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azure_key_vault_certificate_vault_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "azure_key_vault_certificate_vault_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_azure_key_vault_certificate_secret_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "azure_key_vault_certificate_secret_version", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_azure_key_vault_certificate_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "azure_key_vault_certificate_secret_name", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_https_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_https_configuration

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

type azurerm_frontdoor_custom_https_configuration = {
  custom_https_provisioning_enabled : bool prop;
  frontend_endpoint_id : string prop;
  id : string prop option; [@option]
  custom_https_configuration : custom_https_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_frontdoor_custom_https_configuration) -> ()

let yojson_of_azurerm_frontdoor_custom_https_configuration =
  (function
   | {
       custom_https_provisioning_enabled =
         v_custom_https_provisioning_enabled;
       frontend_endpoint_id = v_frontend_endpoint_id;
       id = v_id;
       custom_https_configuration = v_custom_https_configuration;
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
         if Stdlib.( = ) [] v_custom_https_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_https_configuration)
               v_custom_https_configuration
           in
           let bnd = "custom_https_configuration", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_frontend_endpoint_id
         in
         ("frontend_endpoint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_custom_https_provisioning_enabled
         in
         ("custom_https_provisioning_enabled", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_frontdoor_custom_https_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_frontdoor_custom_https_configuration

[@@@deriving.end]

let custom_https_configuration
    ?azure_key_vault_certificate_secret_name
    ?azure_key_vault_certificate_secret_version
    ?azure_key_vault_certificate_vault_id ?certificate_source () :
    custom_https_configuration =
  {
    azure_key_vault_certificate_secret_name;
    azure_key_vault_certificate_secret_version;
    azure_key_vault_certificate_vault_id;
    certificate_source;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor_custom_https_configuration ?id
    ?(custom_https_configuration = []) ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id () :
    azurerm_frontdoor_custom_https_configuration =
  {
    custom_https_provisioning_enabled;
    frontend_endpoint_id;
    id;
    custom_https_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  custom_https_provisioning_enabled : bool prop;
  frontend_endpoint_id : string prop;
  id : string prop;
}

let make ?id ?(custom_https_configuration = []) ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id __id =
  let __type = "azurerm_frontdoor_custom_https_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       custom_https_provisioning_enabled =
         Prop.computed __type __id
           "custom_https_provisioning_enabled";
       frontend_endpoint_id =
         Prop.computed __type __id "frontend_endpoint_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_frontdoor_custom_https_configuration
        (azurerm_frontdoor_custom_https_configuration ?id
           ~custom_https_configuration ?timeouts
           ~custom_https_provisioning_enabled ~frontend_endpoint_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(custom_https_configuration = [])
    ?timeouts ~custom_https_provisioning_enabled
    ~frontend_endpoint_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~custom_https_configuration ?timeouts
      ~custom_https_provisioning_enabled ~frontend_endpoint_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
