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

type azurerm_log_analytics_cluster_customer_managed_key = {
  id : string prop option; [@option]
  key_vault_key_id : string prop;
  log_analytics_cluster_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_log_analytics_cluster_customer_managed_key) -> ()

let yojson_of_azurerm_log_analytics_cluster_customer_managed_key =
  (function
   | {
       id = v_id;
       key_vault_key_id = v_key_vault_key_id;
       log_analytics_cluster_id = v_log_analytics_cluster_id;
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
           yojson_of_prop yojson_of_string v_log_analytics_cluster_id
         in
         ("log_analytics_cluster_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
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
    : azurerm_log_analytics_cluster_customer_managed_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_log_analytics_cluster_customer_managed_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_cluster_customer_managed_key ?id ?timeouts
    ~key_vault_key_id ~log_analytics_cluster_id () :
    azurerm_log_analytics_cluster_customer_managed_key =
  { id; key_vault_key_id; log_analytics_cluster_id; timeouts }

type t = {
  id : string prop;
  key_vault_key_id : string prop;
  log_analytics_cluster_id : string prop;
}

let make ?id ?timeouts ~key_vault_key_id ~log_analytics_cluster_id
    __id =
  let __type =
    "azurerm_log_analytics_cluster_customer_managed_key"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       log_analytics_cluster_id =
         Prop.computed __type __id "log_analytics_cluster_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_cluster_customer_managed_key
        (azurerm_log_analytics_cluster_customer_managed_key ?id
           ?timeouts ~key_vault_key_id ~log_analytics_cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_key_id
    ~log_analytics_cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_key_id ~log_analytics_cluster_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
