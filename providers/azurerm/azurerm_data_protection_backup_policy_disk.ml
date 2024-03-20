(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type retention_rule__criteria = {
  absolute_criteria : string prop option; [@option]
      (** absolute_criteria *)
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

type azurerm_data_protection_backup_policy_disk = {
  backup_repeating_time_intervals : string prop list;
      (** backup_repeating_time_intervals *)
  default_retention_duration : string prop;
      (** default_retention_duration *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  time_zone : string prop option; [@option]  (** time_zone *)
  vault_id : string prop;  (** vault_id *)
  retention_rule : retention_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_policy_disk *)

let retention_rule__criteria ?absolute_criteria () :
    retention_rule__criteria =
  { absolute_criteria }

let retention_rule ~duration ~name ~priority ~criteria () :
    retention_rule =
  { duration; name; priority; criteria }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_data_protection_backup_policy_disk ?id ?time_zone
    ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~vault_id ~retention_rule () :
    azurerm_data_protection_backup_policy_disk =
  {
    backup_repeating_time_intervals;
    default_retention_duration;
    id;
    name;
    time_zone;
    vault_id;
    retention_rule;
    timeouts;
  }

type t = {
  backup_repeating_time_intervals : string list prop;
  default_retention_duration : string prop;
  id : string prop;
  name : string prop;
  time_zone : string prop;
  vault_id : string prop;
}

let make ?id ?time_zone ?timeouts ~backup_repeating_time_intervals
    ~default_retention_duration ~name ~vault_id ~retention_rule __id
    =
  let __type = "azurerm_data_protection_backup_policy_disk" in
  let __attrs =
    ({
       backup_repeating_time_intervals =
         Prop.computed __type __id "backup_repeating_time_intervals";
       default_retention_duration =
         Prop.computed __type __id "default_retention_duration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       time_zone = Prop.computed __type __id "time_zone";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_policy_disk
        (azurerm_data_protection_backup_policy_disk ?id ?time_zone
           ?timeouts ~backup_repeating_time_intervals
           ~default_retention_duration ~name ~vault_id
           ~retention_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?time_zone ?timeouts
    ~backup_repeating_time_intervals ~default_retention_duration
    ~name ~vault_id ~retention_rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?time_zone ?timeouts ~backup_repeating_time_intervals
      ~default_retention_duration ~name ~vault_id ~retention_rule
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
