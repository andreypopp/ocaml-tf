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

type azurerm_automation_job_schedule = {
  automation_account_name : string prop;
  id : string prop option; [@option]
  job_schedule_id : string prop option; [@option]
  parameters : (string * string prop) list option; [@option]
  resource_group_name : string prop;
  run_on : string prop option; [@option]
  runbook_name : string prop;
  schedule_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_automation_job_schedule) -> ()

let yojson_of_azurerm_automation_job_schedule =
  (function
   | {
       automation_account_name = v_automation_account_name;
       id = v_id;
       job_schedule_id = v_job_schedule_id;
       parameters = v_parameters;
       resource_group_name = v_resource_group_name;
       run_on = v_run_on;
       runbook_name = v_runbook_name;
       schedule_name = v_schedule_name;
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
         let arg = yojson_of_prop yojson_of_string v_schedule_name in
         ("schedule_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runbook_name in
         ("runbook_name", arg) :: bnds
       in
       let bnds =
         match v_run_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "run_on", arg in
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_job_schedule_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "job_schedule_id", arg in
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
           yojson_of_prop yojson_of_string v_automation_account_name
         in
         ("automation_account_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_automation_job_schedule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_automation_job_schedule

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_automation_job_schedule ?id ?job_schedule_id ?parameters
    ?run_on ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name () : azurerm_automation_job_schedule
    =
  {
    automation_account_name;
    id;
    job_schedule_id;
    parameters;
    resource_group_name;
    run_on;
    runbook_name;
    schedule_name;
    timeouts;
  }

type t = {
  tf_name : string;
  automation_account_name : string prop;
  id : string prop;
  job_schedule_id : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  resource_manager_id : string prop;
  run_on : string prop;
  runbook_name : string prop;
  schedule_name : string prop;
}

let make ?id ?job_schedule_id ?parameters ?run_on ?timeouts
    ~automation_account_name ~resource_group_name ~runbook_name
    ~schedule_name __id =
  let __type = "azurerm_automation_job_schedule" in
  let __attrs =
    ({
       tf_name = __id;
       automation_account_name =
         Prop.computed __type __id "automation_account_name";
       id = Prop.computed __type __id "id";
       job_schedule_id = Prop.computed __type __id "job_schedule_id";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       run_on = Prop.computed __type __id "run_on";
       runbook_name = Prop.computed __type __id "runbook_name";
       schedule_name = Prop.computed __type __id "schedule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_automation_job_schedule
        (azurerm_automation_job_schedule ?id ?job_schedule_id
           ?parameters ?run_on ?timeouts ~automation_account_name
           ~resource_group_name ~runbook_name ~schedule_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?job_schedule_id ?parameters ?run_on
    ?timeouts ~automation_account_name ~resource_group_name
    ~runbook_name ~schedule_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?job_schedule_id ?parameters ?run_on ?timeouts
      ~automation_account_name ~resource_group_name ~runbook_name
      ~schedule_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
