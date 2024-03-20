(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~bot_name ~facebook_application_id
    ~facebook_application_secret ~location ~resource_group_name ~page
    __id =
  let __type = "azurerm_bot_channel_facebook" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       facebook_application_id =
         Prop.computed __type __id "facebook_application_id";
       facebook_application_secret =
         Prop.computed __type __id "facebook_application_secret";
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
      yojson_of_azurerm_bot_channel_facebook
        (azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
           ~facebook_application_id ~facebook_application_secret
           ~location ~resource_group_name ~page ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bot_name ~facebook_application_id
      ~facebook_application_secret ~location ~resource_group_name
      ~page __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
