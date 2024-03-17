(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_autoscale_setting__notification__email = {
  custom_emails : string prop list option; [@option]
      (** custom_emails *)
  send_to_subscription_administrator : bool prop option; [@option]
      (** send_to_subscription_administrator *)
  send_to_subscription_co_administrator : bool prop option; [@option]
      (** send_to_subscription_co_administrator *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__notification__email *)

type azurerm_monitor_autoscale_setting__notification__webhook = {
  properties : (string * string prop) list option; [@option]
      (** properties *)
  service_uri : string prop;  (** service_uri *)
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
  look_ahead_time : string prop option; [@option]
      (** look_ahead_time *)
  scale_mode : string prop;  (** scale_mode *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__predictive *)

type azurerm_monitor_autoscale_setting__profile__capacity = {
  default : float prop;  (** default *)
  maximum : float prop;  (** maximum *)
  minimum : float prop;  (** minimum *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__capacity *)

type azurerm_monitor_autoscale_setting__profile__fixed_date = {
  end_ : string prop; [@key "end"]  (** end *)
  start : string prop;  (** start *)
  timezone : string prop option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__fixed_date *)

type azurerm_monitor_autoscale_setting__profile__recurrence = {
  days : string prop list;  (** days *)
  hours : float prop list;  (** hours *)
  minutes : float prop list;  (** minutes *)
  timezone : string prop option; [@option]  (** timezone *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__recurrence *)

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions *)

type azurerm_monitor_autoscale_setting__profile__rule__metric_trigger = {
  divide_by_instance_count : bool prop option; [@option]
      (** divide_by_instance_count *)
  metric_name : string prop;  (** metric_name *)
  metric_namespace : string prop option; [@option]
      (** metric_namespace *)
  metric_resource_id : string prop;  (** metric_resource_id *)
  operator : string prop;  (** operator *)
  statistic : string prop;  (** statistic *)
  threshold : float prop;  (** threshold *)
  time_aggregation : string prop;  (** time_aggregation *)
  time_grain : string prop;  (** time_grain *)
  time_window : string prop;  (** time_window *)
  dimensions :
    azurerm_monitor_autoscale_setting__profile__rule__metric_trigger__dimensions
    list;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__profile__rule__metric_trigger *)

type azurerm_monitor_autoscale_setting__profile__rule__scale_action = {
  cooldown : string prop;  (** cooldown *)
  direction : string prop;  (** direction *)
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
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
  name : string prop;  (** name *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting__timeouts *)

type azurerm_monitor_autoscale_setting = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_resource_id : string prop;  (** target_resource_id *)
  notification :
    azurerm_monitor_autoscale_setting__notification list;
  predictive : azurerm_monitor_autoscale_setting__predictive list;
  profile : azurerm_monitor_autoscale_setting__profile list;
  timeouts : azurerm_monitor_autoscale_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_autoscale_setting *)

type t = {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  target_resource_id : string prop;
}

let azurerm_monitor_autoscale_setting ?enabled ?id ?tags ?timeouts
    ~location ~name ~resource_group_name ~target_resource_id
    ~notification ~predictive ~profile __resource_id =
  let __resource_type = "azurerm_monitor_autoscale_setting" in
  let __resource =
    ({
       enabled;
       id;
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
      : azurerm_monitor_autoscale_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_autoscale_setting __resource);
  let __resource_attributes =
    ({
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
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
