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

type azurerm_bot_channel_slack = {
  bot_name : string prop;  (** bot_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  landing_page_url : string prop option; [@option]
      (** landing_page_url *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  signing_secret : string prop option; [@option]
      (** signing_secret *)
  verification_token : string prop;  (** verification_token *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_slack *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_slack ?id ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token () :
    azurerm_bot_channel_slack =
  {
    bot_name;
    client_id;
    client_secret;
    id;
    landing_page_url;
    location;
    resource_group_name;
    signing_secret;
    verification_token;
    timeouts;
  }

type t = {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  landing_page_url : string prop;
  location : string prop;
  resource_group_name : string prop;
  signing_secret : string prop;
  verification_token : string prop;
}

let register ?tf_module ?id ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token __resource_id =
  let __resource_type = "azurerm_bot_channel_slack" in
  let __resource =
    azurerm_bot_channel_slack ?id ?landing_page_url ?signing_secret
      ?timeouts ~bot_name ~client_id ~client_secret ~location
      ~resource_group_name ~verification_token ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_slack __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       id = Prop.computed __resource_type __resource_id "id";
       landing_page_url =
         Prop.computed __resource_type __resource_id
           "landing_page_url";
       location =
         Prop.computed __resource_type __resource_id "location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       signing_secret =
         Prop.computed __resource_type __resource_id "signing_secret";
       verification_token =
         Prop.computed __resource_type __resource_id
           "verification_token";
     }
      : t)
  in
  __resource_attributes
