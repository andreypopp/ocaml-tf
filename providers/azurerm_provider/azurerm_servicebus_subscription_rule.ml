(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_subscription_rule__correlation_filter = {
  content_type : string option; [@option]  (** content_type *)
  correlation_id : string option; [@option]  (** correlation_id *)
  label : string option; [@option]  (** label *)
  message_id : string option; [@option]  (** message_id *)
  properties : (string * string) list option; [@option]
      (** properties *)
  reply_to : string option; [@option]  (** reply_to *)
  reply_to_session_id : string option; [@option]
      (** reply_to_session_id *)
  session_id : string option; [@option]  (** session_id *)
  to_ : string option; [@option] [@key "to"]  (** to *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription_rule__correlation_filter *)

type azurerm_servicebus_subscription_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription_rule__timeouts *)

type azurerm_servicebus_subscription_rule = {
  action : string option; [@option]  (** action *)
  filter_type : string;  (** filter_type *)
  name : string;  (** name *)
  sql_filter : string option; [@option]  (** sql_filter *)
  subscription_id : string;  (** subscription_id *)
  correlation_filter :
    azurerm_servicebus_subscription_rule__correlation_filter list;
  timeouts : azurerm_servicebus_subscription_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_subscription_rule *)

let azurerm_servicebus_subscription_rule ?action ?sql_filter
    ?timeouts ~filter_type ~name ~subscription_id ~correlation_filter
    __resource_id =
  let __resource_type = "azurerm_servicebus_subscription_rule" in
  let __resource =
    {
      action;
      filter_type;
      name;
      sql_filter;
      subscription_id;
      correlation_filter;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_subscription_rule __resource);
  ()
