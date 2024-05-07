(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_sentinel_log_analytics_workspace_onboarding = {
  customer_managed_key_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  resource_group_name : string prop option; [@option]
  workspace_id : string prop option; [@option]
  workspace_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_sentinel_log_analytics_workspace_onboarding) -> ()

let yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding =
  (function
   | {
       customer_managed_key_enabled = v_customer_managed_key_enabled;
       id = v_id;
       resource_group_name = v_resource_group_name;
       workspace_id = v_workspace_id;
       workspace_name = v_workspace_name;
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
         match v_workspace_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspace_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_name", arg in
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
         match v_customer_managed_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "customer_managed_key_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_log_analytics_workspace_onboarding ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_log_analytics_workspace_onboarding
    ?customer_managed_key_enabled ?id ?resource_group_name
    ?workspace_id ?workspace_name ?timeouts () :
    azurerm_sentinel_log_analytics_workspace_onboarding =
  {
    customer_managed_key_enabled;
    id;
    resource_group_name;
    workspace_id;
    workspace_name;
    timeouts;
  }

type t = {
  tf_name : string;
  customer_managed_key_enabled : bool prop;
  id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  workspace_name : string prop;
}

let make ?customer_managed_key_enabled ?id ?resource_group_name
    ?workspace_id ?workspace_name ?timeouts __id =
  let __type =
    "azurerm_sentinel_log_analytics_workspace_onboarding"
  in
  let __attrs =
    ({
       tf_name = __id;
       customer_managed_key_enabled =
         Prop.computed __type __id "customer_managed_key_enabled";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workspace_id = Prop.computed __type __id "workspace_id";
       workspace_name = Prop.computed __type __id "workspace_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding
        (azurerm_sentinel_log_analytics_workspace_onboarding
           ?customer_managed_key_enabled ?id ?resource_group_name
           ?workspace_id ?workspace_name ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_enabled ?id
    ?resource_group_name ?workspace_id ?workspace_name ?timeouts __id
    =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_enabled ?id ?resource_group_name
      ?workspace_id ?workspace_name ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
