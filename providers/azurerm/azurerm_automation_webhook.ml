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

type azurerm_automation_webhook = {
  automation_account_name : string prop;
  enabled : bool prop option; [@option]
  expiry_time : string prop;
  id : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  resource_group_name : string prop;
  run_on_worker_group : string prop option; [@option]
  runbook_name : string prop;
  uri : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_webhook) -> ()

let yojson_of_azurerm_automation_webhook =
  (function
   | {
       automation_account_name = v_automation_account_name;
       enabled = v_enabled;
       expiry_time = v_expiry_time;
       id = v_id;
       name = v_name;
       parameters = v_parameters;
       resource_group_name = v_resource_group_name;
       run_on_worker_group = v_run_on_worker_group;
       runbook_name = v_runbook_name;
       uri = v_uri;
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
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_name in
         ("runbook_name", arg) :: bnds
       in
       let bnds =
         match v_run_on_worker_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_on_worker_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
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
         let arg = yojson_of_prop yojson_of_string v_expiry_time in
         ("expiry_time", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_webhook

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_automation_webhook ?enabled ?id ?parameters
    ?run_on_worker_group ?uri ?timeouts ~automation_account_name
    ~expiry_time ~name ~resource_group_name ~runbook_name () :
    azurerm_automation_webhook =
  {
    automation_account_name;
    enabled;
    expiry_time;
    id;
    name;
    parameters;
    resource_group_name;
    run_on_worker_group;
    runbook_name;
    uri;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  enabled : bool prop;
  expiry_time : string prop;
  id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  resource_group_name : string prop;
  run_on_worker_group : string prop;
  runbook_name : string prop;
  uri : string prop;
}

let make ?enabled ?id ?parameters ?run_on_worker_group ?uri ?timeouts
    ~automation_account_name ~expiry_time ~name ~resource_group_name
    ~runbook_name __id =
  let __type = "azurerm_automation_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       enabled = Prop.computed __type __id "enabled";
       expiry_time = Prop.computed __type __id "expiry_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       run_on_worker_group =
         Prop.computed __type __id "run_on_worker_group";
       runbook_name = Prop.computed __type __id "runbook_name";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_webhook
        (azurerm_automation_webhook ?enabled ?id ?parameters
           ?run_on_worker_group ?uri ?timeouts
           ~automation_account_name ~expiry_time ~name
           ~resource_group_name ~runbook_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?parameters ?run_on_worker_group
    ?uri ?timeouts ~automation_account_name ~expiry_time ~name
    ~resource_group_name ~runbook_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?parameters ?run_on_worker_group ?uri ?timeouts
      ~automation_account_name ~expiry_time ~name
      ~resource_group_name ~runbook_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
