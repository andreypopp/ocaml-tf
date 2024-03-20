(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_control__action = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** access_control__action *)

type access_control__content = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** access_control__content *)

type access_control__trigger__open_authentication_policy__claim = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** access_control__trigger__open_authentication_policy__claim *)

type access_control__trigger__open_authentication_policy = {
  name : string prop;  (** name *)
  claim :
    access_control__trigger__open_authentication_policy__claim list;
}
[@@deriving yojson_of]
(** access_control__trigger__open_authentication_policy *)

type access_control__trigger = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
  open_authentication_policy :
    access_control__trigger__open_authentication_policy list;
}
[@@deriving yojson_of]
(** access_control__trigger *)

type access_control__workflow_management = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** access_control__workflow_management *)

type access_control = {
  action : access_control__action list;
  content : access_control__content list;
  trigger : access_control__trigger list;
  workflow_management : access_control__workflow_management list;
}
[@@deriving yojson_of]
(** access_control *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logic_app_workflow = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  integration_service_environment_id : string prop option; [@option]
      (** integration_service_environment_id *)
  location : string prop;  (** location *)
  logic_app_integration_account_id : string prop option; [@option]
      (** logic_app_integration_account_id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workflow_parameters : (string * string prop) list option; [@option]
      (** workflow_parameters *)
  workflow_schema : string prop option; [@option]
      (** workflow_schema *)
  workflow_version : string prop option; [@option]
      (** workflow_version *)
  access_control : access_control list;
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow *)

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

let access_control ~action ~content ~trigger ~workflow_management ()
    : access_control =
  { action; content; trigger; workflow_management }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_workflow ?enabled ?id
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version ?timeouts
    ~location ~name ~resource_group_name ~access_control ~identity ()
    : azurerm_logic_app_workflow =
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
  access_endpoint : string prop;
  connector_endpoint_ip_addresses : string list prop;
  connector_outbound_ip_addresses : string list prop;
  enabled : bool prop;
  id : string prop;
  integration_service_environment_id : string prop;
  location : string prop;
  logic_app_integration_account_id : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  workflow_endpoint_ip_addresses : string list prop;
  workflow_outbound_ip_addresses : string list prop;
  workflow_parameters : (string * string) list prop;
  workflow_schema : string prop;
  workflow_version : string prop;
}

let make ?enabled ?id ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version ?timeouts
    ~location ~name ~resource_group_name ~access_control ~identity
    __id =
  let __type = "azurerm_logic_app_workflow" in
  let __attrs =
    ({
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
           ?timeouts ~location ~name ~resource_group_name
           ~access_control ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version ?timeouts
    ~location ~name ~resource_group_name ~access_control ~identity
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?integration_service_environment_id
      ?logic_app_integration_account_id ?parameters ?tags
      ?workflow_parameters ?workflow_schema ?workflow_version
      ?timeouts ~location ~name ~resource_group_name ~access_control
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
