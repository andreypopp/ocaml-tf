(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_direct_line_speech__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_direct_line_speech__timeouts *)

type azurerm_bot_channel_direct_line_speech = {
  bot_name : string prop;  (** bot_name *)
  cognitive_account_id : string prop option; [@option]
      (** cognitive_account_id *)
  cognitive_service_access_key : string prop;
      (** cognitive_service_access_key *)
  cognitive_service_location : string prop;
      (** cognitive_service_location *)
  custom_speech_model_id : string prop option; [@option]
      (** custom_speech_model_id *)
  custom_voice_deployment_id : string prop option; [@option]
      (** custom_voice_deployment_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_bot_channel_direct_line_speech__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_direct_line_speech *)

let azurerm_bot_channel_direct_line_speech ?cognitive_account_id
    ?custom_speech_model_id ?custom_voice_deployment_id ?id ?timeouts
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
      id;
      location;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_direct_line_speech __resource);
  ()
