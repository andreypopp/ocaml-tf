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

type azurerm_bot_channel_email = {
  bot_name : string prop;  (** bot_name *)
  email_address : string prop;  (** email_address *)
  email_password : string prop option; [@option]
      (** email_password *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  magic_code : string prop option; [@option]  (** magic_code *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_email *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_email ?email_password ?id ?magic_code
    ?timeouts ~bot_name ~email_address ~location ~resource_group_name
    () : azurerm_bot_channel_email =
  {
    bot_name;
    email_address;
    email_password;
    id;
    location;
    magic_code;
    resource_group_name;
    timeouts;
  }

type t = {
  bot_name : string prop;
  email_address : string prop;
  email_password : string prop;
  id : string prop;
  location : string prop;
  magic_code : string prop;
  resource_group_name : string prop;
}

let make ?email_password ?id ?magic_code ?timeouts ~bot_name
    ~email_address ~location ~resource_group_name __id =
  let __type = "azurerm_bot_channel_email" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       email_address = Prop.computed __type __id "email_address";
       email_password = Prop.computed __type __id "email_password";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       magic_code = Prop.computed __type __id "magic_code";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channel_email
        (azurerm_bot_channel_email ?email_password ?id ?magic_code
           ?timeouts ~bot_name ~email_address ~location
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?email_password ?id ?magic_code ?timeouts
    ~bot_name ~email_address ~location ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?email_password ?id ?magic_code ?timeouts ~bot_name
      ~email_address ~location ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
