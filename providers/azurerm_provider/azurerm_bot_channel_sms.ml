(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_sms__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_sms__timeouts *)

type azurerm_bot_channel_sms = {
  bot_name : string;  (** bot_name *)
  location : string;  (** location *)
  phone_number : string;  (** phone_number *)
  resource_group_name : string;  (** resource_group_name *)
  sms_channel_account_security_id : string;
      (** sms_channel_account_security_id *)
  sms_channel_auth_token : string;  (** sms_channel_auth_token *)
  timeouts : azurerm_bot_channel_sms__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_sms *)

let azurerm_bot_channel_sms ?timeouts ~bot_name ~location
    ~phone_number ~resource_group_name
    ~sms_channel_account_security_id ~sms_channel_auth_token
    __resource_id =
  let __resource_type = "azurerm_bot_channel_sms" in
  let __resource =
    {
      bot_name;
      location;
      phone_number;
      resource_group_name;
      sms_channel_account_security_id;
      sms_channel_auth_token;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_sms __resource);
  ()
