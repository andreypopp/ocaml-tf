(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dns_config = {
  relative_name : string prop;  (** relative_name *)
  ttl : float prop;  (** ttl *)
}
[@@deriving yojson_of]
(** dns_config *)

type monitor_config__custom_header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** monitor_config__custom_header *)

type monitor_config = {
  expected_status_code_ranges : string prop list option; [@option]
      (** expected_status_code_ranges *)
  interval_in_seconds : float prop option; [@option]
      (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  port : float prop;  (** port *)
  protocol : string prop;  (** protocol *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
  tolerated_number_of_failures : float prop option; [@option]
      (** tolerated_number_of_failures *)
  custom_header : monitor_config__custom_header list;
}
[@@deriving yojson_of]
(** monitor_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_traffic_manager_profile = {
  id : string prop option; [@option]  (** id *)
  max_return : float prop option; [@option]  (** max_return *)
  name : string prop;  (** name *)
  profile_status : string prop option; [@option]
      (** profile_status *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  traffic_routing_method : string prop;
      (** traffic_routing_method *)
  traffic_view_enabled : bool prop option; [@option]
      (** traffic_view_enabled *)
  dns_config : dns_config list;
  monitor_config : monitor_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_traffic_manager_profile *)

let dns_config ~relative_name ~ttl () : dns_config =
  { relative_name; ttl }

let monitor_config__custom_header ~name ~value () :
    monitor_config__custom_header =
  { name; value }

let monitor_config ?expected_status_code_ranges ?interval_in_seconds
    ?path ?timeout_in_seconds ?tolerated_number_of_failures ~port
    ~protocol ~custom_header () : monitor_config =
  {
    expected_status_code_ranges;
    interval_in_seconds;
    path;
    port;
    protocol;
    timeout_in_seconds;
    tolerated_number_of_failures;
    custom_header;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_traffic_manager_profile ?id ?max_return ?profile_status
    ?tags ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config () :
    azurerm_traffic_manager_profile =
  {
    id;
    max_return;
    name;
    profile_status;
    resource_group_name;
    tags;
    traffic_routing_method;
    traffic_view_enabled;
    dns_config;
    monitor_config;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  max_return : float prop;
  name : string prop;
  profile_status : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop;
}

let register ?tf_module ?id ?max_return ?profile_status ?tags
    ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config __resource_id
    =
  let __resource_type = "azurerm_traffic_manager_profile" in
  let __resource =
    azurerm_traffic_manager_profile ?id ?max_return ?profile_status
      ?tags ?traffic_view_enabled ?timeouts ~name
      ~resource_group_name ~traffic_routing_method ~dns_config
      ~monitor_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_traffic_manager_profile __resource);
  let __resource_attributes =
    ({
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       max_return =
         Prop.computed __resource_type __resource_id "max_return";
       name = Prop.computed __resource_type __resource_id "name";
       profile_status =
         Prop.computed __resource_type __resource_id "profile_status";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       traffic_routing_method =
         Prop.computed __resource_type __resource_id
           "traffic_routing_method";
       traffic_view_enabled =
         Prop.computed __resource_type __resource_id
           "traffic_view_enabled";
     }
      : t)
  in
  __resource_attributes
