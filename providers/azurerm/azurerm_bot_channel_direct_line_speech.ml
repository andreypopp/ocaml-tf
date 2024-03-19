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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_direct_line_speech *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_direct_line_speech ?cognitive_account_id
    ?custom_speech_model_id ?custom_voice_deployment_id ?id ?timeouts
    ~bot_name ~cognitive_service_access_key
    ~cognitive_service_location ~location ~resource_group_name () :
    azurerm_bot_channel_direct_line_speech =
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

type t = {
  bot_name : string prop;
  cognitive_account_id : string prop;
  cognitive_service_access_key : string prop;
  cognitive_service_location : string prop;
  custom_speech_model_id : string prop;
  custom_voice_deployment_id : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?cognitive_account_id ?custom_speech_model_id
    ?custom_voice_deployment_id ?id ?timeouts ~bot_name
    ~cognitive_service_access_key ~cognitive_service_location
    ~location ~resource_group_name __resource_id =
  let __resource_type = "azurerm_bot_channel_direct_line_speech" in
  let __resource =
    azurerm_bot_channel_direct_line_speech ?cognitive_account_id
      ?custom_speech_model_id ?custom_voice_deployment_id ?id
      ?timeouts ~bot_name ~cognitive_service_access_key
      ~cognitive_service_location ~location ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_direct_line_speech __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       cognitive_account_id =
         Prop.computed __resource_type __resource_id
           "cognitive_account_id";
       cognitive_service_access_key =
         Prop.computed __resource_type __resource_id
           "cognitive_service_access_key";
       cognitive_service_location =
         Prop.computed __resource_type __resource_id
           "cognitive_service_location";
       custom_speech_model_id =
         Prop.computed __resource_type __resource_id
           "custom_speech_model_id";
       custom_voice_deployment_id =
         Prop.computed __resource_type __resource_id
           "custom_voice_deployment_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
