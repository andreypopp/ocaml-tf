(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type protection_policy__backup = {
  frequency : string prop option; [@option]  (** frequency *)
  frequency_in_minutes : float prop option; [@option]
      (** frequency_in_minutes *)
  time : string prop option; [@option]  (** time *)
  weekdays : string prop list option; [@option]  (** weekdays *)
}
[@@deriving yojson_of]
(** protection_policy__backup *)

type protection_policy__retention_daily = {
  count : float prop;  (** count *)
}
[@@deriving yojson_of]
(** protection_policy__retention_daily *)

type protection_policy__retention_monthly = {
  count : float prop;  (** count *)
  format_type : string prop;  (** format_type *)
  monthdays : float prop list option; [@option]  (** monthdays *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** protection_policy__retention_monthly *)

type protection_policy__retention_weekly = {
  count : float prop;  (** count *)
  weekdays : string prop list;  (** weekdays *)
}
[@@deriving yojson_of]
(** protection_policy__retention_weekly *)

type protection_policy__retention_yearly = {
  count : float prop;  (** count *)
  format_type : string prop;  (** format_type *)
  monthdays : float prop list option; [@option]  (** monthdays *)
  months : string prop list;  (** months *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** protection_policy__retention_yearly *)

type protection_policy__simple_retention = {
  count : float prop;  (** count *)
}
[@@deriving yojson_of]
(** protection_policy__simple_retention *)

type protection_policy = {
  policy_type : string prop;  (** policy_type *)
  backup : protection_policy__backup list;
  retention_daily : protection_policy__retention_daily list;
  retention_monthly : protection_policy__retention_monthly list;
  retention_weekly : protection_policy__retention_weekly list;
  retention_yearly : protection_policy__retention_yearly list;
  simple_retention : protection_policy__simple_retention list;
}
[@@deriving yojson_of]
(** protection_policy *)

type settings = {
  compression_enabled : bool prop option; [@option]
      (** compression_enabled *)
  time_zone : string prop;  (** time_zone *)
}
[@@deriving yojson_of]
(** settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_backup_policy_vm_workload = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  workload_type : string prop;  (** workload_type *)
  protection_policy : protection_policy list;
  settings : settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm_workload *)

let protection_policy__backup ?frequency ?frequency_in_minutes ?time
    ?weekdays () : protection_policy__backup =
  { frequency; frequency_in_minutes; time; weekdays }

let protection_policy__retention_daily ~count () :
    protection_policy__retention_daily =
  { count }

let protection_policy__retention_monthly ?monthdays ?weekdays ?weeks
    ~count ~format_type () : protection_policy__retention_monthly =
  { count; format_type; monthdays; weekdays; weeks }

let protection_policy__retention_weekly ~count ~weekdays () :
    protection_policy__retention_weekly =
  { count; weekdays }

let protection_policy__retention_yearly ?monthdays ?weekdays ?weeks
    ~count ~format_type ~months () :
    protection_policy__retention_yearly =
  { count; format_type; monthdays; months; weekdays; weeks }

let protection_policy__simple_retention ~count () :
    protection_policy__simple_retention =
  { count }

let protection_policy ~policy_type ~backup ~retention_daily
    ~retention_monthly ~retention_weekly ~retention_yearly
    ~simple_retention () : protection_policy =
  {
    policy_type;
    backup;
    retention_daily;
    retention_monthly;
    retention_weekly;
    retention_yearly;
    simple_retention;
  }

let settings ?compression_enabled ~time_zone () : settings =
  { compression_enabled; time_zone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_policy_vm_workload ?id ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~workload_type
    ~protection_policy ~settings () :
    azurerm_backup_policy_vm_workload =
  {
    id;
    name;
    recovery_vault_name;
    resource_group_name;
    workload_type;
    protection_policy;
    settings;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  workload_type : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~workload_type ~protection_policy ~settings
    __id =
  let __type = "azurerm_backup_policy_vm_workload" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workload_type = Prop.computed __type __id "workload_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_backup_policy_vm_workload
        (azurerm_backup_policy_vm_workload ?id ?timeouts ~name
           ~recovery_vault_name ~resource_group_name ~workload_type
           ~protection_policy ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~workload_type ~protection_policy ~settings
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_name
      ~resource_group_name ~workload_type ~protection_policy
      ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
