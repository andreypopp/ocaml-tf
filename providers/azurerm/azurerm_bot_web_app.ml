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

type azurerm_bot_web_app = {
  developer_app_insights_api_key : string prop option; [@option]
      (** developer_app_insights_api_key *)
  developer_app_insights_application_id : string prop option;
      [@option]
      (** developer_app_insights_application_id *)
  developer_app_insights_key : string prop option; [@option]
      (** developer_app_insights_key *)
  display_name : string prop option; [@option]  (** display_name *)
  endpoint : string prop option; [@option]  (** endpoint *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  luis_app_ids : string prop list option; [@option]
      (** luis_app_ids *)
  luis_key : string prop option; [@option]  (** luis_key *)
  microsoft_app_id : string prop;  (** microsoft_app_id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_web_app *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_web_app ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku () :
    azurerm_bot_web_app =
  {
    developer_app_insights_api_key;
    developer_app_insights_application_id;
    developer_app_insights_key;
    display_name;
    endpoint;
    id;
    location;
    luis_app_ids;
    luis_key;
    microsoft_app_id;
    name;
    resource_group_name;
    sku;
    tags;
    timeouts;
  }

type t = {
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  id : string prop;
  location : string prop;
  luis_app_ids : string list prop;
  luis_key : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_bot_web_app" in
  let __attrs =
    ({
       developer_app_insights_api_key =
         Prop.computed __type __id "developer_app_insights_api_key";
       developer_app_insights_application_id =
         Prop.computed __type __id
           "developer_app_insights_application_id";
       developer_app_insights_key =
         Prop.computed __type __id "developer_app_insights_key";
       display_name = Prop.computed __type __id "display_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       luis_app_ids = Prop.computed __type __id "luis_app_ids";
       luis_key = Prop.computed __type __id "luis_key";
       microsoft_app_id =
         Prop.computed __type __id "microsoft_app_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_web_app
        (azurerm_bot_web_app ?developer_app_insights_api_key
           ?developer_app_insights_application_id
           ?developer_app_insights_key ?display_name ?endpoint ?id
           ?luis_app_ids ?luis_key ?tags ?timeouts ~location
           ~microsoft_app_id ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?developer_app_insights_api_key
      ?developer_app_insights_application_id
      ?developer_app_insights_key ?display_name ?endpoint ?id
      ?luis_app_ids ?luis_key ?tags ?timeouts ~location
      ~microsoft_app_id ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
