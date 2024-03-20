(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_bot_channel_direct_line_speech = {
  bot_name : string prop;
  cognitive_account_id : string prop option; [@option]
  cognitive_service_access_key : string prop;
  cognitive_service_location : string prop;
  custom_speech_model_id : string prop option; [@option]
  custom_voice_deployment_id : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channel_direct_line_speech) -> ()

let yojson_of_azurerm_bot_channel_direct_line_speech =
  (function
   | {
       bot_name = v_bot_name;
       cognitive_account_id = v_cognitive_account_id;
       cognitive_service_access_key = v_cognitive_service_access_key;
       cognitive_service_location = v_cognitive_service_location;
       custom_speech_model_id = v_custom_speech_model_id;
       custom_voice_deployment_id = v_custom_voice_deployment_id;
       id = v_id;
       location = v_location;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_voice_deployment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_voice_deployment_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_speech_model_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_speech_model_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cognitive_service_location
         in
         ("cognitive_service_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cognitive_service_access_key
         in
         ("cognitive_service_access_key", arg) :: bnds
       in
       let bnds =
         match v_cognitive_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cognitive_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channel_direct_line_speech ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channel_direct_line_speech

[@@@deriving.end]

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
