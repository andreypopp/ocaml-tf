(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_bot_channel_direct_line_speech__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_direct_line_speech__timeouts *)

type azurerm_bot_channel_direct_line_speech = {
  bot_name : string;  (** bot_name *)
  cognitive_account_id : string option; [@option]
      (** cognitive_account_id *)
  cognitive_service_access_key : string;
      (** cognitive_service_access_key *)
  cognitive_service_location : string;
      (** cognitive_service_location *)
  custom_speech_model_id : string option; [@option]
      (** custom_speech_model_id *)
  custom_voice_deployment_id : string option; [@option]
      (** custom_voice_deployment_id *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_bot_channel_direct_line_speech__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_direct_line_speech *)

let azurerm_bot_channel_direct_line_speech ?cognitive_account_id
    ?custom_speech_model_id ?custom_voice_deployment_id ?timeouts
    ~bot_name ~cognitive_service_access_key
    ~cognitive_service_location ~location ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_bot_channel_direct_line_speech" in
  let __resource =
    {
      bot_name;
      cognitive_account_id;
      cognitive_service_access_key;
      cognitive_service_location;
      custom_speech_model_id;
      custom_voice_deployment_id;
      location;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_direct_line_speech __resource);
  ()
