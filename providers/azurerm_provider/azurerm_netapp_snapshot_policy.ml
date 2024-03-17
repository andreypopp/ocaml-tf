(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_snapshot_policy__daily_schedule = {
  hour : float;  (** hour *)
  minute : float;  (** minute *)
  snapshots_to_keep : float;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__daily_schedule *)

type azurerm_netapp_snapshot_policy__hourly_schedule = {
  minute : float;  (** minute *)
  snapshots_to_keep : float;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__hourly_schedule *)

type azurerm_netapp_snapshot_policy__monthly_schedule = {
  days_of_month : float list;  (** days_of_month *)
  hour : float;  (** hour *)
  minute : float;  (** minute *)
  snapshots_to_keep : float;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__monthly_schedule *)

type azurerm_netapp_snapshot_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__timeouts *)

type azurerm_netapp_snapshot_policy__weekly_schedule = {
  days_of_week : string list;  (** days_of_week *)
  hour : float;  (** hour *)
  minute : float;  (** minute *)
  snapshots_to_keep : float;  (** snapshots_to_keep *)
}
[@@deriving yojson_of]
(** azurerm_netapp_snapshot_policy__weekly_schedule *)

type azurerm_netapp_snapshot_policy = {
  account_name : string;  (** account_name *)
  enabled : bool;  (** enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
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

let azurerm_netapp_snapshot_policy ?tags ?timeouts ~account_name
    ~enabled ~location ~name ~resource_group_name ~daily_schedule
    ~hourly_schedule ~monthly_schedule ~weekly_schedule __resource_id
    =
  let __resource_type = "azurerm_netapp_snapshot_policy" in
  let __resource =
    {
      account_name;
      enabled;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_snapshot_policy __resource);
  ()
