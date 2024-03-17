(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_web_app__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_web_app__timeouts *)

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
  timeouts : azurerm_bot_web_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_web_app *)

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

let azurerm_bot_web_app ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_bot_web_app" in
  let __resource =
    ({
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
      : azurerm_bot_web_app)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_web_app __resource);
  let __resource_attributes =
    ({
       developer_app_insights_api_key =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_api_key";
       developer_app_insights_application_id =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_application_id";
       developer_app_insights_key =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_key";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       luis_app_ids =
         Prop.computed __resource_type __resource_id "luis_app_ids";
       luis_key =
         Prop.computed __resource_type __resource_id "luis_key";
       microsoft_app_id =
         Prop.computed __resource_type __resource_id
           "microsoft_app_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
