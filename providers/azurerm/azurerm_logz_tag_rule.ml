(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** tag_filter *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_logz_tag_rule = {
  id : string prop option; [@option]  (** id *)
  logz_monitor_id : string prop;  (** logz_monitor_id *)
  send_aad_logs : bool prop option; [@option]  (** send_aad_logs *)
  send_activity_logs : bool prop option; [@option]
      (** send_activity_logs *)
  send_subscription_logs : bool prop option; [@option]
      (** send_subscription_logs *)
  tag_filter : tag_filter list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logz_tag_rule *)

let tag_filter ?value ~action ~name () : tag_filter =
  { action; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logz_tag_rule ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?timeouts ~logz_monitor_id ~tag_filter ()
    : azurerm_logz_tag_rule =
  {
    id;
    logz_monitor_id;
    send_aad_logs;
    send_activity_logs;
    send_subscription_logs;
    tag_filter;
    timeouts;
  }

type t = {
  id : string prop;
  logz_monitor_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

let register ?tf_module ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?timeouts ~logz_monitor_id ~tag_filter
    __resource_id =
  let __resource_type = "azurerm_logz_tag_rule" in
  let __resource =
    azurerm_logz_tag_rule ?id ?send_aad_logs ?send_activity_logs
      ?send_subscription_logs ?timeouts ~logz_monitor_id ~tag_filter
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_tag_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       logz_monitor_id =
         Prop.computed __resource_type __resource_id
           "logz_monitor_id";
       send_aad_logs =
         Prop.computed __resource_type __resource_id "send_aad_logs";
       send_activity_logs =
         Prop.computed __resource_type __resource_id
           "send_activity_logs";
       send_subscription_logs =
         Prop.computed __resource_type __resource_id
           "send_subscription_logs";
     }
      : t)
  in
  __resource_attributes
