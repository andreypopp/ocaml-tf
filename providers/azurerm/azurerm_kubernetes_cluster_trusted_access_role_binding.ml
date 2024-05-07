(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_kubernetes_cluster_trusted_access_role_binding = {
  id : string prop option; [@option]
  kubernetes_cluster_id : string prop;
  name : string prop;
  roles : string prop list;
  source_resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_kubernetes_cluster_trusted_access_role_binding) ->
  ()

let yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding
    =
  (function
   | {
       id = v_id;
       kubernetes_cluster_id = v_kubernetes_cluster_id;
       name = v_name;
       roles = v_roles;
       source_resource_id = v_source_resource_id;
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
           yojson_of_prop yojson_of_string v_source_resource_id
         in
         ("source_resource_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_roles
         in
         ("roles", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : azurerm_kubernetes_cluster_trusted_access_role_binding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kubernetes_cluster_trusted_access_role_binding ?id
    ?timeouts ~kubernetes_cluster_id ~name ~roles ~source_resource_id
    () : azurerm_kubernetes_cluster_trusted_access_role_binding =
  {
    id;
    kubernetes_cluster_id;
    name;
    roles;
    source_resource_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  kubernetes_cluster_id : string prop;
  name : string prop;
  roles : string list prop;
  source_resource_id : string prop;
}

let make ?id ?timeouts ~kubernetes_cluster_id ~name ~roles
    ~source_resource_id __id =
  let __type =
    "azurerm_kubernetes_cluster_trusted_access_role_binding"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       name = Prop.computed __type __id "name";
       roles = Prop.computed __type __id "roles";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster_trusted_access_role_binding
        (azurerm_kubernetes_cluster_trusted_access_role_binding ?id
           ?timeouts ~kubernetes_cluster_id ~name ~roles
           ~source_resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~kubernetes_cluster_id ~name
    ~roles ~source_resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~kubernetes_cluster_id ~name ~roles
      ~source_resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
