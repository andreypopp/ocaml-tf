(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type backup = {
  frequency : string prop;  (** frequency *)
  hour_duration : float prop option; [@option]  (** hour_duration *)
  hour_interval : float prop option; [@option]  (** hour_interval *)
  time : string prop;  (** time *)
  weekdays : string prop list option; [@option]  (** weekdays *)
}
[@@deriving yojson_of]
(** backup *)

type instant_restore_resource_group = {
  prefix : string prop;  (** prefix *)
  suffix : string prop option; [@option]  (** suffix *)
}
[@@deriving yojson_of]
(** instant_restore_resource_group *)

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

type azurerm_backup_policy_vm = {
  id : string prop option; [@option]  (** id *)
  instant_restore_retention_days : float prop option; [@option]
      (** instant_restore_retention_days *)
  name : string prop;  (** name *)
  policy_type : string prop option; [@option]  (** policy_type *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timezone : string prop option; [@option]  (** timezone *)
  backup : backup list;
  instant_restore_resource_group :
    instant_restore_resource_group list;
  retention_daily : retention_daily list;
  retention_monthly : retention_monthly list;
  retention_weekly : retention_weekly list;
  retention_yearly : retention_yearly list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_backup_policy_vm *)

let backup ?hour_duration ?hour_interval ?weekdays ~frequency ~time
    () : backup =
  { frequency; hour_duration; hour_interval; time; weekdays }

let instant_restore_resource_group ?suffix ~prefix () :
    instant_restore_resource_group =
  { prefix; suffix }

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

let azurerm_backup_policy_vm ?id ?instant_restore_retention_days
    ?policy_type ?timezone ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~backup ~instant_restore_resource_group
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly () : azurerm_backup_policy_vm =
  {
    id;
    instant_restore_retention_days;
    name;
    policy_type;
    recovery_vault_name;
    resource_group_name;
    timezone;
    backup;
    instant_restore_resource_group;
    retention_daily;
    retention_monthly;
    retention_weekly;
    retention_yearly;
    timeouts;
  }

type t = {
  id : string prop;
  instant_restore_retention_days : float prop;
  name : string prop;
  policy_type : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
  timezone : string prop;
}

let register ?tf_module ?id ?instant_restore_retention_days
    ?policy_type ?timezone ?timeouts ~name ~recovery_vault_name
    ~resource_group_name ~backup ~instant_restore_resource_group
    ~retention_daily ~retention_monthly ~retention_weekly
    ~retention_yearly __resource_id =
  let __resource_type = "azurerm_backup_policy_vm" in
  let __resource =
    azurerm_backup_policy_vm ?id ?instant_restore_retention_days
      ?policy_type ?timezone ?timeouts ~name ~recovery_vault_name
      ~resource_group_name ~backup ~instant_restore_resource_group
      ~retention_daily ~retention_monthly ~retention_weekly
      ~retention_yearly ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_backup_policy_vm __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instant_restore_retention_days =
         Prop.computed __resource_type __resource_id
           "instant_restore_retention_days";
       name = Prop.computed __resource_type __resource_id "name";
       policy_type =
         Prop.computed __resource_type __resource_id "policy_type";
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
