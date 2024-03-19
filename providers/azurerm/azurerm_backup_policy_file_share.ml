(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type backup__hourly = {
  interval : float prop;  (** interval *)
  start_time : string prop;  (** start_time *)
  window_duration : float prop;  (** window_duration *)
}
[@@deriving yojson_of]
(** backup__hourly *)

type backup = {
  frequency : string prop;  (** frequency *)
  time : string prop option; [@option]  (** time *)
  hourly : backup__hourly list;
}
[@@deriving yojson_of]
(** backup *)

type retention_daily = { count : float prop  (** count *) }
[@@deriving yojson_of]
(** retention_daily *)

type retention_monthly = {
  count : float prop;  (** count *)
  days : float prop list option; [@option]  (** days *)
  include_last_days : bool prop option; [@option]
      (** include_last_days *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** retention_monthly *)

type retention_weekly = {
  count : float prop;  (** count *)
  weekdays : string prop list;  (** weekdays *)
}
[@@deriving yojson_of]
(** retention_weekly *)

type retention_yearly = {
  count : float prop;  (** count *)
  days : float prop list option; [@option]  (** days *)
  include_last_days : bool prop option; [@option]
      (** include_last_days *)
  months : string prop list;  (** months *)
  weekdays : string prop list option; [@option]  (** weekdays *)
  weeks : string prop list option; [@option]  (** weeks *)
}
[@@deriving yojson_of]
(** retention_yearly *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_backup_policy_file_share = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timezone : string prop option; [@option]  (** timezone *)
  backup : backup list;
  retention_daily : retention_daily list;
  retention_monthly : retention_monthly list;
  retention_weekly : retention_weekly list;
  retention_yearly : retention_yearly list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_file_share *)

let backup__hourly ~interval ~start_time ~window_duration () :
    backup__hourly =
  { interval; start_time; window_duration }

let backup ?time ~frequency ~hourly () : backup =
  { frequency; time; hourly }

let retention_daily ~count () : retention_daily = { count }

let retention_monthly ?days ?include_last_days ?weekdays ?weeks
    ~count () : retention_monthly =
  { count; days; include_last_days; weekdays; weeks }

let retention_weekly ~count ~weekdays () : retention_weekly =
  { count; weekdays }

let retention_yearly ?days ?include_last_days ?weekdays ?weeks ~count
    ~months () : retention_yearly =
  { count; days; include_last_days; months; weekdays; weeks }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_backup_policy_file_share ?id ?timezone ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly () : azurerm_backup_policy_file_share =
  {
    id;
    name;
    recovery_vault_name;
    resource_group_name;
    timezone;
    backup;
    retention_daily;
    retention_monthly;
    retention_weekly;
    retention_yearly;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

let register ?tf_module ?id ?timezone ?timeouts ~name
    ~recovery_vault_name ~resource_group_name ~backup
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly __resource_id =
  let __resource_type = "azurerm_backup_policy_file_share" in
  let __resource =
    azurerm_backup_policy_file_share ?id ?timezone ?timeouts ~name
      ~recovery_vault_name ~resource_group_name ~backup
      ~retention_daily ~retention_monthly ~retention_weekly
      ~retention_yearly ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_file_share __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_vault_name =
         Prop.computed __resource_type __resource_id
           "recovery_vault_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       timezone =
         Prop.computed __resource_type __resource_id "timezone";
     }
      : t)
  in
  __resource_attributes
