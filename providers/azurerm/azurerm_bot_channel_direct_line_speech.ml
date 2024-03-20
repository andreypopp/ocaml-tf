(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cognitive_account_id ?custom_speech_model_id
    ?custom_voice_deployment_id ?id ?timeouts ~bot_name
    ~cognitive_service_access_key ~cognitive_service_location
    ~location ~resource_group_name __id =
  let __type = "azurerm_bot_channel_direct_line_speech" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       cognitive_account_id =
         Prop.computed __type __id "cognitive_account_id";
       cognitive_service_access_key =
         Prop.computed __type __id "cognitive_service_access_key";
       cognitive_service_location =
         Prop.computed __type __id "cognitive_service_location";
       custom_speech_model_id =
         Prop.computed __type __id "custom_speech_model_id";
       custom_voice_deployment_id =
         Prop.computed __type __id "custom_voice_deployment_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_direct_line_speech
        (azurerm_bot_channel_direct_line_speech ?cognitive_account_id
           ?custom_speech_model_id ?custom_voice_deployment_id ?id
           ?timeouts ~bot_name ~cognitive_service_access_key
           ~cognitive_service_location ~location ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?cognitive_account_id ?custom_speech_model_id
    ?custom_voice_deployment_id ?id ?timeouts ~bot_name
    ~cognitive_service_access_key ~cognitive_service_location
    ~location ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?cognitive_account_id ?custom_speech_model_id
      ?custom_voice_deployment_id ?id ?timeouts ~bot_name
      ~cognitive_service_access_key ~cognitive_service_location
      ~location ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
