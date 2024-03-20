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

type azurerm_resource_policy_remediation = {
  failure_percentage : float prop option; [@option]
  id : string prop option; [@option]
  location_filters : string prop list option; [@option]
  name : string prop;
  parallel_deployments : float prop option; [@option]
  policy_assignment_id : string prop;
  policy_definition_id : string prop option; [@option]
  policy_definition_reference_id : string prop option; [@option]
  resource_count : float prop option; [@option]
  resource_discovery_mode : string prop option; [@option]
  resource_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_resource_policy_remediation) -> ()

let yojson_of_azurerm_resource_policy_remediation =
  (function
   | {
       failure_percentage = v_failure_percentage;
       id = v_id;
       location_filters = v_location_filters;
       name = v_name;
       parallel_deployments = v_parallel_deployments;
       policy_assignment_id = v_policy_assignment_id;
       policy_definition_id = v_policy_definition_id;
       policy_definition_reference_id =
         v_policy_definition_reference_id;
       resource_count = v_resource_count;
       resource_discovery_mode = v_resource_discovery_mode;
       resource_id = v_resource_id;
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
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         match v_resource_discovery_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_discovery_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "resource_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_definition_reference_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_definition_reference_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_definition_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_definition_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_assignment_id
         in
         ("policy_assignment_id", arg) :: bnds
       in
       let bnds =
         match v_parallel_deployments with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "parallel_deployments", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "location_filters", arg in
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
         match v_failure_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_resource_policy_remediation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_resource_policy_remediation

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_policy_remediation ?failure_percentage ?id
    ?location_filters ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_id () : azurerm_resource_policy_remediation =
  {
    failure_percentage;
    id;
    location_filters;
    name;
    parallel_deployments;
    policy_assignment_id;
    policy_definition_id;
    policy_definition_reference_id;
    resource_count;
    resource_discovery_mode;
    resource_id;
    timeouts;
  }

type t = {
  failure_percentage : float prop;
  id : string prop;
  location_filters : string list prop;
  name : string prop;
  parallel_deployments : float prop;
  policy_assignment_id : string prop;
  policy_definition_id : string prop;
  policy_definition_reference_id : string prop;
  resource_count : float prop;
  resource_discovery_mode : string prop;
  resource_id : string prop;
}

let make ?failure_percentage ?id ?location_filters
    ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_id __id =
  let __type = "azurerm_resource_policy_remediation" in
  let __attrs =
    ({
       failure_percentage =
         Prop.computed __type __id "failure_percentage";
       id = Prop.computed __type __id "id";
       location_filters =
         Prop.computed __type __id "location_filters";
       name = Prop.computed __type __id "name";
       parallel_deployments =
         Prop.computed __type __id "parallel_deployments";
       policy_assignment_id =
         Prop.computed __type __id "policy_assignment_id";
       policy_definition_id =
         Prop.computed __type __id "policy_definition_id";
       policy_definition_reference_id =
         Prop.computed __type __id "policy_definition_reference_id";
       resource_count = Prop.computed __type __id "resource_count";
       resource_discovery_mode =
         Prop.computed __type __id "resource_discovery_mode";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_resource_policy_remediation
        (azurerm_resource_policy_remediation ?failure_percentage ?id
           ?location_filters ?parallel_deployments
           ?policy_definition_id ?policy_definition_reference_id
           ?resource_count ?resource_discovery_mode ?timeouts ~name
           ~policy_assignment_id ~resource_id ());
    attrs = __attrs;
  }

let register ?tf_module ?failure_percentage ?id ?location_filters
    ?parallel_deployments ?policy_definition_id
    ?policy_definition_reference_id ?resource_count
    ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
    ~resource_id __id =
  let (r : _ Tf_core.resource) =
    make ?failure_percentage ?id ?location_filters
      ?parallel_deployments ?policy_definition_id
      ?policy_definition_reference_id ?resource_count
      ?resource_discovery_mode ?timeouts ~name ~policy_assignment_id
      ~resource_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
