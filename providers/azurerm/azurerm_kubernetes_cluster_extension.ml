(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type plan = {
  name : string prop;
  product : string prop;
  promotion_code : string prop option; [@option]
  publisher : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : plan) -> ()

let yojson_of_plan =
  (function
   | {
       name = v_name;
       product = v_product;
       promotion_code = v_promotion_code;
       publisher = v_publisher;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         match v_promotion_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "promotion_code", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product in
         ("product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plan

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

type aks_assigned_identity = {
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aks_assigned_identity) -> ()

let yojson_of_aks_assigned_identity =
  (function
   | {
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
       `Assoc bnds
    : aks_assigned_identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aks_assigned_identity

[@@@deriving.end]

type azurerm_kubernetes_cluster_extension = {
  cluster_id : string prop;
  configuration_protected_settings :
    (string * string prop) list option;
      [@option]
  configuration_settings : (string * string prop) list option;
      [@option]
  extension_type : string prop;
  id : string prop option; [@option]
  name : string prop;
  release_namespace : string prop option; [@option]
  release_train : string prop option; [@option]
  target_namespace : string prop option; [@option]
  version : string prop option; [@option]
  plan : plan list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_cluster_extension) -> ()

let yojson_of_azurerm_kubernetes_cluster_extension =
  (function
   | {
       cluster_id = v_cluster_id;
       configuration_protected_settings =
         v_configuration_protected_settings;
       configuration_settings = v_configuration_settings;
       extension_type = v_extension_type;
       id = v_id;
       name = v_name;
       release_namespace = v_release_namespace;
       release_train = v_release_train;
       target_namespace = v_target_namespace;
       version = v_version;
       plan = v_plan;
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
         let arg = yojson_of_list yojson_of_plan v_plan in
         ("plan", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_namespace", arg in
             bnd :: bnds
       in
       let bnds =
         match v_release_train with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_train", arg in
             bnd :: bnds
       in
       let bnds =
         match v_release_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "release_namespace", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_extension_type
         in
         ("extension_type", arg) :: bnds
       in
       let bnds =
         match v_configuration_settings with
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
             let bnd = "configuration_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_protected_settings with
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
             let bnd = "configuration_protected_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_cluster_extension ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_cluster_extension

[@@@deriving.end]

let plan ?promotion_code ?version ~name ~product ~publisher () : plan
    =
  { name; product; promotion_code; publisher; version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_cluster_extension
    ?configuration_protected_settings ?configuration_settings ?id
    ?release_namespace ?release_train ?target_namespace ?version
    ?timeouts ~cluster_id ~extension_type ~name ~plan () :
    azurerm_kubernetes_cluster_extension =
  {
    cluster_id;
    configuration_protected_settings;
    configuration_settings;
    extension_type;
    id;
    name;
    release_namespace;
    release_train;
    target_namespace;
    version;
    plan;
    timeouts;
  }

type t = {
  aks_assigned_identity : aks_assigned_identity list prop;
  cluster_id : string prop;
  configuration_protected_settings : (string * string) list prop;
  configuration_settings : (string * string) list prop;
  current_version : string prop;
  extension_type : string prop;
  id : string prop;
  name : string prop;
  release_namespace : string prop;
  release_train : string prop;
  target_namespace : string prop;
  version : string prop;
}

let make ?configuration_protected_settings ?configuration_settings
    ?id ?release_namespace ?release_train ?target_namespace ?version
    ?timeouts ~cluster_id ~extension_type ~name ~plan __id =
  let __type = "azurerm_kubernetes_cluster_extension" in
  let __attrs =
    ({
       aks_assigned_identity =
         Prop.computed __type __id "aks_assigned_identity";
       cluster_id = Prop.computed __type __id "cluster_id";
       configuration_protected_settings =
         Prop.computed __type __id "configuration_protected_settings";
       configuration_settings =
         Prop.computed __type __id "configuration_settings";
       current_version = Prop.computed __type __id "current_version";
       extension_type = Prop.computed __type __id "extension_type";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       release_namespace =
         Prop.computed __type __id "release_namespace";
       release_train = Prop.computed __type __id "release_train";
       target_namespace =
         Prop.computed __type __id "target_namespace";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster_extension
        (azurerm_kubernetes_cluster_extension
           ?configuration_protected_settings ?configuration_settings
           ?id ?release_namespace ?release_train ?target_namespace
           ?version ?timeouts ~cluster_id ~extension_type ~name ~plan
           ());
    attrs = __attrs;
  }

let register ?tf_module ?configuration_protected_settings
    ?configuration_settings ?id ?release_namespace ?release_train
    ?target_namespace ?version ?timeouts ~cluster_id ~extension_type
    ~name ~plan __id =
  let (r : _ Tf_core.resource) =
    make ?configuration_protected_settings ?configuration_settings
      ?id ?release_namespace ?release_train ?target_namespace
      ?version ?timeouts ~cluster_id ~extension_type ~name ~plan __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
