(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type apns_credential = {
  application_mode : string prop;  (** application_mode *)
  bundle_id : string prop;  (** bundle_id *)
  key_id : string prop;  (** key_id *)
  team_id : string prop;  (** team_id *)
  token : string prop;  (** token *)
}
[@@deriving yojson_of]
(** apns_credential *)

type gcm_credential = { api_key : string prop  (** api_key *) }
[@@deriving yojson_of]
(** gcm_credential *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_notification_hub = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  apns_credential : apns_credential list;
  gcm_credential : gcm_credential list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub *)

let apns_credential ~application_mode ~bundle_id ~key_id ~team_id
    ~token () : apns_credential =
  { application_mode; bundle_id; key_id; team_id; token }

let gcm_credential ~api_key () : gcm_credential = { api_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_notification_hub ?id ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential () : azurerm_notification_hub =
  {
    id;
    location;
    name;
    namespace_name;
    resource_group_name;
    tags;
    apns_credential;
    gcm_credential;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~namespace_name
    ~resource_group_name ~apns_credential ~gcm_credential __id =
  let __type = "azurerm_notification_hub" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       namespace_name = Prop.computed __type __id "namespace_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_notification_hub
        (azurerm_notification_hub ?id ?tags ?timeouts ~location ~name
           ~namespace_name ~resource_group_name ~apns_credential
           ~gcm_credential ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~namespace_name ~resource_group_name ~apns_credential
    ~gcm_credential __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~namespace_name
      ~resource_group_name ~apns_credential ~gcm_credential __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
