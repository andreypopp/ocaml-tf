(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type page = {
  access_token : string prop;  (** access_token *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** page *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channel_facebook = {
  bot_name : string prop;  (** bot_name *)
  facebook_application_id : string prop;
      (** facebook_application_id *)
  facebook_application_secret : string prop;
      (** facebook_application_secret *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  page : page list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook *)

let page ~access_token ~id () : page = { access_token; id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page () : azurerm_bot_channel_facebook =
  {
    bot_name;
    facebook_application_id;
    facebook_application_secret;
    id;
    location;
    resource_group_name;
    page;
    timeouts;
  }

type t = {
  bot_name : string prop;
  facebook_application_id : string prop;
  facebook_application_secret : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page __resource_id =
  let __resource_type = "azurerm_bot_channel_facebook" in
  let __resource =
    azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
      ~facebook_application_id ~facebook_application_secret ~location
      ~resource_group_name ~page ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_facebook __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       facebook_application_id =
         Prop.computed __resource_type __resource_id
           "facebook_application_id";
       facebook_application_secret =
         Prop.computed __resource_type __resource_id
           "facebook_application_secret";
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
