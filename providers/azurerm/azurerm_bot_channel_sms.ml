(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channel_sms = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  phone_number : string prop;  (** phone_number *)
  resource_group_name : string prop;  (** resource_group_name *)
  sms_channel_account_security_id : string prop;
      (** sms_channel_account_security_id *)
  sms_channel_auth_token : string prop;
      (** sms_channel_auth_token *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_sms *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_sms ?id ?timeouts ~bot_name ~location
    ~phone_number ~resource_group_name
    ~sms_channel_account_security_id ~sms_channel_auth_token () :
    azurerm_bot_channel_sms =
  {
    bot_name;
    id;
    location;
    phone_number;
    resource_group_name;
    sms_channel_account_security_id;
    sms_channel_auth_token;
    timeouts;
  }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  phone_number : string prop;
  resource_group_name : string prop;
  sms_channel_account_security_id : string prop;
  sms_channel_auth_token : string prop;
}

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~phone_number ~resource_group_name
    ~sms_channel_account_security_id ~sms_channel_auth_token
    __resource_id =
  let __resource_type = "azurerm_bot_channel_sms" in
  let __resource =
    azurerm_bot_channel_sms ?id ?timeouts ~bot_name ~location
      ~phone_number ~resource_group_name
      ~sms_channel_account_security_id ~sms_channel_auth_token ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_sms __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       phone_number =
         Prop.computed __resource_type __resource_id "phone_number";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sms_channel_account_security_id =
         Prop.computed __resource_type __resource_id
           "sms_channel_account_security_id";
       sms_channel_auth_token =
         Prop.computed __resource_type __resource_id
           "sms_channel_auth_token";
     }
      : t)
  in
  __resource_attributes
