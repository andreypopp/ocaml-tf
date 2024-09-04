(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azure_monitor_workspace_integrations = {
  resource_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_monitor_workspace_integrations) -> ()

let yojson_of_azure_monitor_workspace_integrations =
  (function
   | { resource_id = v_resource_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       `Assoc bnds
    : azure_monitor_workspace_integrations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_monitor_workspace_integrations

[@@@deriving.end]

type azurerm_dashboard_grafana = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dashboard_grafana) -> ()

let yojson_of_azurerm_dashboard_grafana =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_dashboard_grafana -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dashboard_grafana

[@@@deriving.end]

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?read () : timeouts = { read }

let azurerm_dashboard_grafana ?id ?(identity = []) ?timeouts ~name
    ~resource_group_name () : azurerm_dashboard_grafana =
  { id; name; resource_group_name; identity; timeouts }

type t = {
  tf_name : string;
  api_key_enabled : bool prop;
  auto_generated_domain_name_label_scope : string prop;
  azure_monitor_workspace_integrations :
    azure_monitor_workspace_integrations list prop;
  deterministic_outbound_ip_enabled : bool prop;
  endpoint : string prop;
  grafana_major_version : string prop;
  grafana_version : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outbound_ips : string list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : string Tf_core.assoc prop;
  zone_redundancy_enabled : bool prop;
}

let make ?id ?(identity = []) ?timeouts ~name ~resource_group_name
    __id =
  let __type = "azurerm_dashboard_grafana" in
  let __attrs =
    ({
       tf_name = __id;
       api_key_enabled = Prop.computed __type __id "api_key_enabled";
       auto_generated_domain_name_label_scope =
         Prop.computed __type __id
           "auto_generated_domain_name_label_scope";
       azure_monitor_workspace_integrations =
         Prop.computed __type __id
           "azure_monitor_workspace_integrations";
       deterministic_outbound_ip_enabled =
         Prop.computed __type __id
           "deterministic_outbound_ip_enabled";
       endpoint = Prop.computed __type __id "endpoint";
       grafana_major_version =
         Prop.computed __type __id "grafana_major_version";
       grafana_version = Prop.computed __type __id "grafana_version";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       outbound_ips = Prop.computed __type __id "outbound_ips";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundancy_enabled =
         Prop.computed __type __id "zone_redundancy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dashboard_grafana
        (azurerm_dashboard_grafana ?id ~identity ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(identity = []) ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~identity ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
