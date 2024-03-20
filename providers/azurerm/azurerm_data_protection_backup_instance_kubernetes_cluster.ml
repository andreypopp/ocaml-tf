(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_datasource_parameters = {
  cluster_scoped_resources_enabled : bool prop option; [@option]
  excluded_namespaces : string prop list option; [@option]
  excluded_resource_types : string prop list option; [@option]
  included_namespaces : string prop list option; [@option]
  included_resource_types : string prop list option; [@option]
  label_selectors : string prop list option; [@option]
  volume_snapshot_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : backup_datasource_parameters) -> ()

let yojson_of_backup_datasource_parameters =
  (function
   | {
       cluster_scoped_resources_enabled =
         v_cluster_scoped_resources_enabled;
       excluded_namespaces = v_excluded_namespaces;
       excluded_resource_types = v_excluded_resource_types;
       included_namespaces = v_included_namespaces;
       included_resource_types = v_included_resource_types;
       label_selectors = v_label_selectors;
       volume_snapshot_enabled = v_volume_snapshot_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_snapshot_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "volume_snapshot_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_selectors with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "label_selectors", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_resource_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_resource_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_namespaces with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_namespaces", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_scoped_resources_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cluster_scoped_resources_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : backup_datasource_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_backup_datasource_parameters

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_data_protection_backup_instance_kubernetes_cluster = {
  backup_policy_id : string prop;
  id : string prop option; [@option]
  kubernetes_cluster_id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
  backup_datasource_parameters : backup_datasource_parameters list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_data_protection_backup_instance_kubernetes_cluster) ->
  ()

let yojson_of_azurerm_data_protection_backup_instance_kubernetes_cluster
    =
  (function
   | {
       backup_policy_id = v_backup_policy_id;
       id = v_id;
       kubernetes_cluster_id = v_kubernetes_cluster_id;
       location = v_location;
       name = v_name;
       snapshot_resource_group_name = v_snapshot_resource_group_name;
       vault_id = v_vault_id;
       backup_datasource_parameters = v_backup_datasource_parameters;
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
           yojson_of_list yojson_of_backup_datasource_parameters
             v_backup_datasource_parameters
         in
         ("backup_datasource_parameters", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vault_id in
         ("vault_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_snapshot_resource_group_name
         in
         ("snapshot_resource_group_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_cluster_id
         in
         ("kubernetes_cluster_id", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_backup_policy_id
         in
         ("backup_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_data_protection_backup_instance_kubernetes_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_data_protection_backup_instance_kubernetes_cluster

[@@@deriving.end]

let backup_datasource_parameters ?cluster_scoped_resources_enabled
    ?excluded_namespaces ?excluded_resource_types
    ?included_namespaces ?included_resource_types ?label_selectors
    ?volume_snapshot_enabled () : backup_datasource_parameters =
  {
    cluster_scoped_resources_enabled;
    excluded_namespaces;
    excluded_resource_types;
    included_namespaces;
    included_resource_types;
    label_selectors;
    volume_snapshot_enabled;
  }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_instance_kubernetes_cluster ?id
    ?timeouts ~backup_policy_id ~kubernetes_cluster_id ~location
    ~name ~snapshot_resource_group_name ~vault_id
    ~backup_datasource_parameters () :
    azurerm_data_protection_backup_instance_kubernetes_cluster =
  {
    backup_policy_id;
    id;
    kubernetes_cluster_id;
    location;
    name;
    snapshot_resource_group_name;
    vault_id;
    backup_datasource_parameters;
    timeouts;
  }

type t = {
  backup_policy_id : string prop;
  id : string prop;
  kubernetes_cluster_id : string prop;
  location : string prop;
  name : string prop;
  snapshot_resource_group_name : string prop;
  vault_id : string prop;
}

let make ?id ?timeouts ~backup_policy_id ~kubernetes_cluster_id
    ~location ~name ~snapshot_resource_group_name ~vault_id
    ~backup_datasource_parameters __id =
  let __type =
    "azurerm_data_protection_backup_instance_kubernetes_cluster"
  in
  let __attrs =
    ({
       backup_policy_id =
         Prop.computed __type __id "backup_policy_id";
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       snapshot_resource_group_name =
         Prop.computed __type __id "snapshot_resource_group_name";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_instance_kubernetes_cluster
        (azurerm_data_protection_backup_instance_kubernetes_cluster
           ?id ?timeouts ~backup_policy_id ~kubernetes_cluster_id
           ~location ~name ~snapshot_resource_group_name ~vault_id
           ~backup_datasource_parameters ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~backup_policy_id
    ~kubernetes_cluster_id ~location ~name
    ~snapshot_resource_group_name ~vault_id
    ~backup_datasource_parameters __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~backup_policy_id ~kubernetes_cluster_id
      ~location ~name ~snapshot_resource_group_name ~vault_id
      ~backup_datasource_parameters __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
