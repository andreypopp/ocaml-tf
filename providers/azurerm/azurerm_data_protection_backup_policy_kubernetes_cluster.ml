(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type default_retention_rule__life_cycle = {
  data_store_type : string prop;  (** data_store_type *)
  duration : string prop;  (** duration *)
}
[@@deriving yojson_of]
(** default_retention_rule__life_cycle *)

type default_retention_rule = {
  life_cycle : default_retention_rule__life_cycle list;
}
[@@deriving yojson_of]
(** default_retention_rule *)

type retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
      (** absolute_criteria *)
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  months_of_year : string prop list option; [@option]
      (** months_of_year *)
  scheduled_backup_times : string prop list option; [@option]
      (** scheduled_backup_times *)
  weeks_of_month : string prop list option; [@option]
      (** weeks_of_month *)
}
[@@deriving yojson_of]
(** retention_rule__criteria *)

type retention_rule__life_cycle = {
  data_store_type : string prop;  (** data_store_type *)
  duration : string prop;  (** duration *)
}
[@@deriving yojson_of]
(** retention_rule__life_cycle *)

type retention_rule = {
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  criteria : retention_rule__criteria list;
  life_cycle : retention_rule__life_cycle list;
}
[@@deriving yojson_of]
(** retention_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_protection_backup_policy_kubernetes_cluster = {
  backup_repeating_time_intervals : string prop list;
      (** backup_repeating_time_intervals *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  vault_name : string prop;  (** vault_name *)
  default_retention_rule : default_retention_rule list;
  retention_rule : retention_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_kubernetes_cluster *)

let default_retention_rule__life_cycle ~data_store_type ~duration ()
    : default_retention_rule__life_cycle =
  { data_store_type; duration }

let default_retention_rule ~life_cycle () : default_retention_rule =
  { life_cycle }

let retention_rule__criteria ?absolute_criteria ?days_of_week
    ?months_of_year ?scheduled_backup_times ?weeks_of_month () :
    retention_rule__criteria =
  {
    absolute_criteria;
    days_of_week;
    months_of_year;
    scheduled_backup_times;
    weeks_of_month;
  }

let retention_rule__life_cycle ~data_store_type ~duration () :
    retention_rule__life_cycle =
  { data_store_type; duration }

let retention_rule ~name ~priority ~criteria ~life_cycle () :
    retention_rule =
  { name; priority; criteria; life_cycle }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_kubernetes_cluster ?id
    ?time_zone ?timeouts ~backup_repeating_time_intervals ~name
    ~resource_group_name ~vault_name ~default_retention_rule
    ~retention_rule () :
    azurerm_data_protection_backup_policy_kubernetes_cluster =
  {
    backup_repeating_time_intervals;
    id;
    name;
    resource_group_name;
    time_zone;
    vault_name;
    default_retention_rule;
    retention_rule;
    timeouts;
  }

type t = {
  backup_repeating_time_intervals : string list prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop;
  vault_name : string prop;
}

let register ?tf_module ?id ?time_zone ?timeouts
    ~backup_repeating_time_intervals ~name ~resource_group_name
    ~vault_name ~default_retention_rule ~retention_rule __resource_id
    =
  let __resource_type =
    "azurerm_data_protection_backup_policy_kubernetes_cluster"
  in
  let __resource =
    azurerm_data_protection_backup_policy_kubernetes_cluster ?id
      ?time_zone ?timeouts ~backup_repeating_time_intervals ~name
      ~resource_group_name ~vault_name ~default_retention_rule
      ~retention_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_policy_kubernetes_cluster
       __resource);
  let __resource_attributes =
    ({
       backup_repeating_time_intervals =
         Prop.computed __resource_type __resource_id
           "backup_repeating_time_intervals";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
       vault_name =
         Prop.computed __resource_type __resource_id "vault_name";
     }
      : t)
  in
  __resource_attributes
