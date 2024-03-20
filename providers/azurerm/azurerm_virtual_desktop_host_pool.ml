(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scheduled_agent_updates__schedule = {
  day_of_week : string prop;  (** day_of_week *)
  hour_of_day : float prop;  (** hour_of_day *)
}
[@@deriving yojson_of]
(** scheduled_agent_updates__schedule *)

type scheduled_agent_updates = {
  enabled : bool prop option; [@option]  (** enabled *)
  timezone : string prop option; [@option]  (** timezone *)
  use_session_host_timezone : bool prop option; [@option]
      (** use_session_host_timezone *)
  schedule : scheduled_agent_updates__schedule list;
}
[@@deriving yojson_of]
(** scheduled_agent_updates *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_virtual_desktop_host_pool = {
  custom_rdp_properties : string prop option; [@option]
      (** custom_rdp_properties *)
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  id : string prop option; [@option]  (** id *)
  load_balancer_type : string prop;  (** load_balancer_type *)
  location : string prop;  (** location *)
  maximum_sessions_allowed : float prop option; [@option]
      (** maximum_sessions_allowed *)
  name : string prop;  (** name *)
  personal_desktop_assignment_type : string prop option; [@option]
      (** personal_desktop_assignment_type *)
  preferred_app_group_type : string prop option; [@option]
      (** Preferred App Group type to display *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_vm_on_connect : bool prop option; [@option]
      (** start_vm_on_connect *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  validate_environment : bool prop option; [@option]
      (** validate_environment *)
  vm_template : string prop option; [@option]  (** vm_template *)
  scheduled_agent_updates : scheduled_agent_updates list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_host_pool *)

let scheduled_agent_updates__schedule ~day_of_week ~hour_of_day () :
    scheduled_agent_updates__schedule =
  { day_of_week; hour_of_day }

let scheduled_agent_updates ?enabled ?timezone
    ?use_session_host_timezone ~schedule () : scheduled_agent_updates
    =
  { enabled; timezone; use_session_host_timezone; schedule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_host_pool ?custom_rdp_properties
    ?description ?friendly_name ?id ?maximum_sessions_allowed
    ?personal_desktop_assignment_type ?preferred_app_group_type
    ?start_vm_on_connect ?tags ?validate_environment ?vm_template
    ?timeouts ~load_balancer_type ~location ~name
    ~resource_group_name ~type_ ~scheduled_agent_updates () :
    azurerm_virtual_desktop_host_pool =
  {
    custom_rdp_properties;
    description;
    friendly_name;
    id;
    load_balancer_type;
    location;
    maximum_sessions_allowed;
    name;
    personal_desktop_assignment_type;
    preferred_app_group_type;
    resource_group_name;
    start_vm_on_connect;
    tags;
    type_;
    validate_environment;
    vm_template;
    scheduled_agent_updates;
    timeouts;
  }

type t = {
  custom_rdp_properties : string prop;
  description : string prop;
  friendly_name : string prop;
  id : string prop;
  load_balancer_type : string prop;
  location : string prop;
  maximum_sessions_allowed : float prop;
  name : string prop;
  personal_desktop_assignment_type : string prop;
  preferred_app_group_type : string prop;
  resource_group_name : string prop;
  start_vm_on_connect : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  validate_environment : bool prop;
  vm_template : string prop;
}

let make ?custom_rdp_properties ?description ?friendly_name ?id
    ?maximum_sessions_allowed ?personal_desktop_assignment_type
    ?preferred_app_group_type ?start_vm_on_connect ?tags
    ?validate_environment ?vm_template ?timeouts ~load_balancer_type
    ~location ~name ~resource_group_name ~type_
    ~scheduled_agent_updates __id =
  let __type = "azurerm_virtual_desktop_host_pool" in
  let __attrs =
    ({
       custom_rdp_properties =
         Prop.computed __type __id "custom_rdp_properties";
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       id = Prop.computed __type __id "id";
       load_balancer_type =
         Prop.computed __type __id "load_balancer_type";
       location = Prop.computed __type __id "location";
       maximum_sessions_allowed =
         Prop.computed __type __id "maximum_sessions_allowed";
       name = Prop.computed __type __id "name";
       personal_desktop_assignment_type =
         Prop.computed __type __id "personal_desktop_assignment_type";
       preferred_app_group_type =
         Prop.computed __type __id "preferred_app_group_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_vm_on_connect =
         Prop.computed __type __id "start_vm_on_connect";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
       validate_environment =
         Prop.computed __type __id "validate_environment";
       vm_template = Prop.computed __type __id "vm_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_host_pool
        (azurerm_virtual_desktop_host_pool ?custom_rdp_properties
           ?description ?friendly_name ?id ?maximum_sessions_allowed
           ?personal_desktop_assignment_type
           ?preferred_app_group_type ?start_vm_on_connect ?tags
           ?validate_environment ?vm_template ?timeouts
           ~load_balancer_type ~location ~name ~resource_group_name
           ~type_ ~scheduled_agent_updates ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_rdp_properties ?description
    ?friendly_name ?id ?maximum_sessions_allowed
    ?personal_desktop_assignment_type ?preferred_app_group_type
    ?start_vm_on_connect ?tags ?validate_environment ?vm_template
    ?timeouts ~load_balancer_type ~location ~name
    ~resource_group_name ~type_ ~scheduled_agent_updates __id =
  let (r : _ Tf_core.resource) =
    make ?custom_rdp_properties ?description ?friendly_name ?id
      ?maximum_sessions_allowed ?personal_desktop_assignment_type
      ?preferred_app_group_type ?start_vm_on_connect ?tags
      ?validate_environment ?vm_template ?timeouts
      ~load_balancer_type ~location ~name ~resource_group_name ~type_
      ~scheduled_agent_updates __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
