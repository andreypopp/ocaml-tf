(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type retention_rule = {
  duration : string prop;  (** duration *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  criteria : retention_rule__criteria list;
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

type azurerm_data_protection_backup_policy_postgresql = {
  backup_repeating_time_intervals : string prop list;
      (** backup_repeating_time_intervals *)
  default_retention_duration : string prop;
      (** default_retention_duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  vault_name : string prop;  (** vault_name *)
  retention_rule : retention_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_postgresql *)

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

let retention_rule ~duration ~name ~priority ~criteria () :
    retention_rule =
  { duration; name; priority; criteria }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_postgresql ?id ?time_zone
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name ~retention_rule () :
    azurerm_data_protection_backup_policy_postgresql =
  {
    backup_repeating_time_intervals;
    default_retention_duration;
    id;
    name;
    resource_group_name;
    time_zone;
    vault_name;
    retention_rule;
    timeouts;
  }

type t = {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  time_zone : string prop;
  vault_name : string prop;
}

let make ?id ?time_zone ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~resource_group_name
    ~vault_name ~retention_rule __id =
  let __type = "azurerm_data_protection_backup_policy_postgresql" in
  let __attrs =
    ({
       backup_repeating_time_intervals =
         Prop.computed __type __id "backup_repeating_time_intervals";
       default_retention_duration =
         Prop.computed __type __id "default_retention_duration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       time_zone = Prop.computed __type __id "time_zone";
       vault_name = Prop.computed __type __id "vault_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_postgresql
        (azurerm_data_protection_backup_policy_postgresql ?id
           ?time_zone ?timeouts ~backup_repeating_time_intervals
           ~default_retention_duration ~name ~resource_group_name
           ~vault_name ~retention_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?time_zone ?timeouts
    ~backup_repeating_time_intervals ~default_retention_duration
    ~name ~resource_group_name ~vault_name ~retention_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?time_zone ?timeouts ~backup_repeating_time_intervals
      ~default_retention_duration ~name ~resource_group_name
      ~vault_name ~retention_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
