(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_email__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_email__timeouts *)

type azurerm_bot_channel_email = {
  bot_name : string prop;  (** bot_name *)
  email_address : string prop;  (** email_address *)
  email_password : string prop option; [@option]
      (** email_password *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  magic_code : string prop option; [@option]  (** magic_code *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_bot_channel_email__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_email *)

let azurerm_bot_channel_email ?email_password ?id ?magic_code
    ?timeouts ~bot_name ~email_address ~location ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_bot_channel_email" in
  let __resource =
    {
      bot_name;
      email_address;
      email_password;
      id;
      location;
      magic_code;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_email __resource);
  ()
