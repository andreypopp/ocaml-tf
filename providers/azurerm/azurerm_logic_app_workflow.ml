(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_control__action = {
  allowed_caller_ip_address_range : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control__action) -> ()

let yojson_of_access_control__action =
  (function
   | {
       allowed_caller_ip_address_range =
         v_allowed_caller_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_caller_ip_address_range then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_caller_ip_address_range
           in
           let bnd = "allowed_caller_ip_address_range", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control__action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__action

[@@@deriving.end]

type access_control__content = {
  allowed_caller_ip_address_range : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control__content) -> ()

let yojson_of_access_control__content =
  (function
   | {
       allowed_caller_ip_address_range =
         v_allowed_caller_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_caller_ip_address_range then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_caller_ip_address_range
           in
           let bnd = "allowed_caller_ip_address_range", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control__content -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__content

[@@@deriving.end]

type access_control__trigger__open_authentication_policy__claim = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : access_control__trigger__open_authentication_policy__claim) ->
  ()

let yojson_of_access_control__trigger__open_authentication_policy__claim
    =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : access_control__trigger__open_authentication_policy__claim ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_access_control__trigger__open_authentication_policy__claim

[@@@deriving.end]

type access_control__trigger__open_authentication_policy = {
  name : string prop;
  claim :
    access_control__trigger__open_authentication_policy__claim list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : access_control__trigger__open_authentication_policy) -> ()

let yojson_of_access_control__trigger__open_authentication_policy =
  (function
   | { name = v_name; claim = v_claim } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_claim then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_access_control__trigger__open_authentication_policy__claim)
               v_claim
           in
           let bnd = "claim", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : access_control__trigger__open_authentication_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__trigger__open_authentication_policy

[@@@deriving.end]

type access_control__trigger = {
  allowed_caller_ip_address_range : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  open_authentication_policy :
    access_control__trigger__open_authentication_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control__trigger) -> ()

let yojson_of_access_control__trigger =
  (function
   | {
       allowed_caller_ip_address_range =
         v_allowed_caller_ip_address_range;
       open_authentication_policy = v_open_authentication_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_open_authentication_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_access_control__trigger__open_authentication_policy)
               v_open_authentication_policy
           in
           let bnd = "open_authentication_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_caller_ip_address_range then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_caller_ip_address_range
           in
           let bnd = "allowed_caller_ip_address_range", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control__trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__trigger

[@@@deriving.end]

type access_control__workflow_management = {
  allowed_caller_ip_address_range : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control__workflow_management) -> ()

let yojson_of_access_control__workflow_management =
  (function
   | {
       allowed_caller_ip_address_range =
         v_allowed_caller_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_caller_ip_address_range then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_caller_ip_address_range
           in
           let bnd = "allowed_caller_ip_address_range", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control__workflow_management ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control__workflow_management

[@@@deriving.end]

type access_control = {
  action : access_control__action list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  content : access_control__content list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  trigger : access_control__trigger list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  workflow_management : access_control__workflow_management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control) -> ()

let yojson_of_access_control =
  (function
   | {
       action = v_action;
       content = v_content;
       trigger = v_trigger;
       workflow_management = v_workflow_management;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workflow_management then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_access_control__workflow_management)
               v_workflow_management
           in
           let bnd = "workflow_management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_trigger then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control__trigger)
               v_trigger
           in
           let bnd = "trigger", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_content then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control__content)
               v_content
           in
           let bnd = "content", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control__action)
               v_action
           in
           let bnd = "action", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control

[@@@deriving.end]

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

type azurerm_logic_app_workflow = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  integration_service_environment_id : string prop option; [@option]
  location : string prop;
  logic_app_integration_account_id : string prop option; [@option]
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  resource_group_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  workflow_parameters : string prop Tf_core.assoc option; [@option]
  workflow_schema : string prop option; [@option]
  workflow_version : string prop option; [@option]
  access_control : access_control list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logic_app_workflow) -> ()

let yojson_of_azurerm_logic_app_workflow =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       integration_service_environment_id =
         v_integration_service_environment_id;
       location = v_location;
       logic_app_integration_account_id =
         v_logic_app_integration_account_id;
       name = v_name;
       parameters = v_parameters;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       workflow_parameters = v_workflow_parameters;
       workflow_schema = v_workflow_schema;
       workflow_version = v_workflow_version;
       access_control = v_access_control;
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
         if Stdlib.( = ) [] v_access_control then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control)
               v_access_control
           in
           let bnd = "access_control", arg in
           bnd :: bnds
       in
       let bnds =
         match v_workflow_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workflow_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workflow_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workflow_schema", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workflow_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "workflow_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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
         match v_logic_app_integration_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logic_app_integration_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_integration_service_environment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "integration_service_environment_id", arg in
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_workflow

[@@@deriving.end]

let access_control__action ~allowed_caller_ip_address_range () :
    access_control__action =
  { allowed_caller_ip_address_range }

let access_control__content ~allowed_caller_ip_address_range () :
    access_control__content =
  { allowed_caller_ip_address_range }

let access_control__trigger__open_authentication_policy__claim ~name
    ~value () :
    access_control__trigger__open_authentication_policy__claim =
  { name; value }

let access_control__trigger__open_authentication_policy ~name ~claim
    () : access_control__trigger__open_authentication_policy =
  { name; claim }

let access_control__trigger ~allowed_caller_ip_address_range
    ~open_authentication_policy () : access_control__trigger =
  { allowed_caller_ip_address_range; open_authentication_policy }

let access_control__workflow_management
    ~allowed_caller_ip_address_range () :
    access_control__workflow_management =
  { allowed_caller_ip_address_range }

let access_control ?(action = []) ?(content = []) ?(trigger = [])
    ?(workflow_management = []) () : access_control =
  { action; content; trigger; workflow_management }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_workflow ?enabled ?id
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version
    ?(access_control = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name () : azurerm_logic_app_workflow =
  {
    enabled;
    id;
    integration_service_environment_id;
    location;
    logic_app_integration_account_id;
    name;
    parameters;
    resource_group_name;
    tags;
    workflow_parameters;
    workflow_schema;
    workflow_version;
    access_control;
    identity;
    timeouts;
  }

type t = {
  tf_name : string;
  access_endpoint : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  enabled : bool prop;
  id : string prop;
  integration_service_environment_id : string prop;
  location : string prop;
  logic_app_integration_account_id : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
  workflow_parameters : string Tf_core.assoc prop;
  workflow_schema : string prop;
  workflow_version : string prop;
}

let make ?enabled ?id ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version
    ?(access_control = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_logic_app_workflow" in
  let __attrs =
    ({
       tf_name = __id;
       access_endpoint = Prop.computed __type __id "access_endpoint";
       connector_endpoint_ip_addresses =
         Prop.computed __type __id "connector_endpoint_ip_addresses";
       connector_outbound_ip_addresses =
         Prop.computed __type __id "connector_outbound_ip_addresses";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       integration_service_environment_id =
         Prop.computed __type __id
           "integration_service_environment_id";
       location = Prop.computed __type __id "location";
       logic_app_integration_account_id =
         Prop.computed __type __id "logic_app_integration_account_id";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       workflow_endpoint_ip_addresses =
         Prop.computed __type __id "workflow_endpoint_ip_addresses";
       workflow_outbound_ip_addresses =
         Prop.computed __type __id "workflow_outbound_ip_addresses";
       workflow_parameters =
         Prop.computed __type __id "workflow_parameters";
       workflow_schema = Prop.computed __type __id "workflow_schema";
       workflow_version =
         Prop.computed __type __id "workflow_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_workflow
        (azurerm_logic_app_workflow ?enabled ?id
           ?integration_service_environment_id
           ?logic_app_integration_account_id ?parameters ?tags
           ?workflow_parameters ?workflow_schema ?workflow_version
           ~access_control ~identity ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version
    ?(access_control = []) ?(identity = []) ?timeouts ~location ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?integration_service_environment_id
      ?logic_app_integration_account_id ?parameters ?tags
      ?workflow_parameters ?workflow_schema ?workflow_version
      ~access_control ~identity ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
