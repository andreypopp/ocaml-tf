(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_snapshot_policy__daily_schedule = {
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__daily_schedule *)

type azurerm_netapp_snapshot_policy__hourly_schedule = {
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__hourly_schedule *)

type azurerm_netapp_snapshot_policy__monthly_schedule = {
  days_of_month : float prop list;  (** days_of_month *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__monthly_schedule *)

type azurerm_netapp_snapshot_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__timeouts *)

type azurerm_netapp_snapshot_policy__weekly_schedule = {
  days_of_week : string prop list;  (** days_of_week *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__weekly_schedule *)

type azurerm_netapp_snapshot_policy = {
  account_name : string prop;  (** account_name *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  daily_schedule :
    azurerm_netapp_snapshot_policy__daily_schedule list;
  hourly_schedule :
    azurerm_netapp_snapshot_policy__hourly_schedule list;
  monthly_schedule :
    azurerm_netapp_snapshot_policy__monthly_schedule list;
  timeouts : azurerm_netapp_snapshot_policy__timeouts option;
  weekly_schedule :
    azurerm_netapp_snapshot_policy__weekly_schedule list;
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy *)

type t = {
  account_name : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_netapp_snapshot_policy ?id ?tags ?timeouts ~account_name
    ~enabled ~location ~name ~resource_group_name ~daily_schedule
    ~hourly_schedule ~monthly_schedule ~weekly_schedule __resource_id
    =
  let __resource_type = "azurerm_netapp_snapshot_policy" in
  let __resource =
    ({
       account_name;
       enabled;
       id;
       location;
       name;
       resource_group_name;
       tags;
       daily_schedule;
       hourly_schedule;
       monthly_schedule;
       timeouts;
       weekly_schedule;
     }
      : azurerm_netapp_snapshot_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_snapshot_policy __resource);
  let __resource_attributes =
    ({
       account_name =
         Prop.computed __resource_type __resource_id "account_name";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
