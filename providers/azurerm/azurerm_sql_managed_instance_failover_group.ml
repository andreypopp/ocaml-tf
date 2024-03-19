(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type read_write_endpoint_failover_policy = {
  grace_minutes : float prop option; [@option]  (** grace_minutes *)
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** read_write_endpoint_failover_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type partner_region = {
  location : string prop;  (** location *)
  role : string prop;  (** role *)
}
[@@deriving yojson_of]

type azurerm_sql_managed_instance_failover_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_instance_name : string prop;  (** managed_instance_name *)
  name : string prop;  (** name *)
  partner_managed_instance_id : string prop;
      (** partner_managed_instance_id *)
  readonly_endpoint_failover_policy_enabled : bool prop option;
      [@option]
      (** readonly_endpoint_failover_policy_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  read_write_endpoint_failover_policy :
    read_write_endpoint_failover_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_managed_instance_failover_group *)

let read_write_endpoint_failover_policy ?grace_minutes ~mode () :
    read_write_endpoint_failover_policy =
  { grace_minutes; mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_managed_instance_failover_group ?id
    ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
    ~managed_instance_name ~name ~partner_managed_instance_id
    ~resource_group_name ~read_write_endpoint_failover_policy () :
    azurerm_sql_managed_instance_failover_group =
  {
    id;
    location;
    managed_instance_name;
    name;
    partner_managed_instance_id;
    readonly_endpoint_failover_policy_enabled;
    resource_group_name;
    read_write_endpoint_failover_policy;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  managed_instance_name : string prop;
  name : string prop;
  partner_managed_instance_id : string prop;
  partner_region : partner_region list prop;
  readonly_endpoint_failover_policy_enabled : bool prop;
  resource_group_name : string prop;
  role : string prop;
}

let register ?tf_module ?id
    ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
    ~managed_instance_name ~name ~partner_managed_instance_id
    ~resource_group_name ~read_write_endpoint_failover_policy
    __resource_id =
  let __resource_type =
    "azurerm_sql_managed_instance_failover_group"
  in
  let __resource =
    azurerm_sql_managed_instance_failover_group ?id
      ?readonly_endpoint_failover_policy_enabled ?timeouts ~location
      ~managed_instance_name ~name ~partner_managed_instance_id
      ~resource_group_name ~read_write_endpoint_failover_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_managed_instance_failover_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_instance_name =
         Prop.computed __resource_type __resource_id
           "managed_instance_name";
       name = Prop.computed __resource_type __resource_id "name";
       partner_managed_instance_id =
         Prop.computed __resource_type __resource_id
           "partner_managed_instance_id";
       partner_region =
         Prop.computed __resource_type __resource_id "partner_region";
       readonly_endpoint_failover_policy_enabled =
         Prop.computed __resource_type __resource_id
           "readonly_endpoint_failover_policy_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes
