(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logz_sub_account_tag_rule__tag_filter = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account_tag_rule__tag_filter *)

type azurerm_logz_sub_account_tag_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account_tag_rule__timeouts *)

type azurerm_logz_sub_account_tag_rule = {
  id : string prop option; [@option]  (** id *)
  logz_sub_account_id : string prop;  (** logz_sub_account_id *)
  send_aad_logs : bool prop option; [@option]  (** send_aad_logs *)
  send_activity_logs : bool prop option; [@option]
      (** send_activity_logs *)
  send_subscription_logs : bool prop option; [@option]
      (** send_subscription_logs *)
  tag_filter : azurerm_logz_sub_account_tag_rule__tag_filter list;
  timeouts : azurerm_logz_sub_account_tag_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logz_sub_account_tag_rule *)

type t = {
  id : string prop;
  logz_sub_account_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

let azurerm_logz_sub_account_tag_rule ?id ?send_aad_logs
    ?send_activity_logs ?send_subscription_logs ?timeouts
    ~logz_sub_account_id ~tag_filter __resource_id =
  let __resource_type = "azurerm_logz_sub_account_tag_rule" in
  let __resource =
    ({
       id;
       logz_sub_account_id;
       send_aad_logs;
       send_activity_logs;
       send_subscription_logs;
       tag_filter;
       timeouts;
     }
      : azurerm_logz_sub_account_tag_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logz_sub_account_tag_rule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       logz_sub_account_id =
         Prop.computed __resource_type __resource_id
           "logz_sub_account_id";
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
