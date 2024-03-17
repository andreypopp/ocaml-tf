(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_autoscale_setting__notification__email = {
  custom_emails : string list option; [@option]  (** custom_emails *)
  send_to_subscription_administrator : bool option; [@option]
      (** send_to_subscription_administrator *)
  send_to_subscription_co_administrator : bool option; [@option]
      (** send_to_subscription_co_administrator *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__notification__email *)

type azurerm_monitor_autoscale_setting__notification__webhook = {
  properties : (string * string) list option; [@option]
      (** properties *)
  service_uri : string;  (** service_uri *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__notification__webhook *)

type azurerm_monitor_autoscale_setting__notification = {
  email :
    azurerm_monitor_autoscale_setting__notification__email list;
  webhook :
    azurerm_monitor_autoscale_setting__notification__webhook list;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__notification *)

type azurerm_monitor_autoscale_setting__predictive = {
  look_ahead_time : string option; [@option]  (** look_ahead_time *)
  scale_mode : string;  (** scale_mode *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__predictive *)

type azurerm_monitor_autoscale_setting__profile__capacity = {
  default : float;  (** default *)
  maximum : float;  (** maximum *)
  minimum : float;  (** minimum *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__capacity *)

type azurerm_monitor_autoscale_setting__profile__fixed_date = {
  end_ : string; [@key "end"]  (** end *)
  start : string;  (** start *)
  timezone : string option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__fixed_date *)

type azurerm_monitor_autoscale_setting__profile__recurrence = {
  days : string list;  (** days *)
  hours : float list;  (** hours *)
  minutes : float list;  (** minutes *)
  timezone : string option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__recurrence *)

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions = {
  name : string;  (** name *)
  operator : string;  (** operator *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions *)

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger = {
  divide_by_instance_count : bool option; [@option]
      (** divide_by_instance_count *)
  metric_name : string;  (** metric_name *)
  metric_namespace : string option; [@option]
      (** metric_namespace *)
  metric_resource_id : string;  (** metric_resource_id *)
  operator : string;  (** operator *)
  statistic : string;  (** statistic *)
  threshold : float;  (** threshold *)
  time_aggregation : string;  (** time_aggregation *)
  time_grain : string;  (** time_grain *)
  time_window : string;  (** time_window *)
  dimensions :
    azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule__metric_trigger *)

type azurerm_monitor_autoscale_setting__profile__rule__scale_action = {
  cooldown : string;  (** cooldown *)
  direction : string;  (** direction *)
  type_ : string; [@key "type"]  (** type *)
  value : float;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule__scale_action *)

type azurerm_monitor_autoscale_setting__profile__rule = {
  metric_trigger :
    azurerm_monitor_autoscale_setting__profile__rule__metric_trigger
    list;
  scale_action :
    azurerm_monitor_autoscale_setting__profile__rule__scale_action
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule *)

type azurerm_monitor_autoscale_setting__profile = {
  name : string;  (** name *)
  capacity :
    azurerm_monitor_autoscale_setting__profile__capacity list;
  fixed_date :
    azurerm_monitor_autoscale_setting__profile__fixed_date list;
  recurrence :
    azurerm_monitor_autoscale_setting__profile__recurrence list;
  rule : azurerm_monitor_autoscale_setting__profile__rule list;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile *)

type azurerm_monitor_autoscale_setting__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__timeouts *)

type azurerm_monitor_autoscale_setting = {
  enabled : bool option; [@option]  (** enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_resource_id : string;  (** target_resource_id *)
  notification :
    azurerm_monitor_autoscale_setting__notification list;
  predictive : azurerm_monitor_autoscale_setting__predictive list;
  profile : azurerm_monitor_autoscale_setting__profile list;
  timeouts : azurerm_monitor_autoscale_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting *)

let azurerm_monitor_autoscale_setting ?enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~target_resource_id
    ~notification ~predictive ~profile __resource_id =
  let __resource_type = "azurerm_monitor_autoscale_setting" in
  let __resource =
    {
      enabled;
      location;
      name;
      resource_group_name;
      tags;
      target_resource_id;
      notification;
      predictive;
      profile;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_autoscale_setting __resource);
  ()
