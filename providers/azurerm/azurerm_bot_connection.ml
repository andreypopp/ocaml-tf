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

type azurerm_bot_connection = {
  bot_name : string prop;  (** bot_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  scopes : string prop option; [@option]  (** scopes *)
  service_provider_name : string prop;  (** service_provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_connection ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name () :
    azurerm_bot_connection =
  {
    bot_name;
    client_id;
    client_secret;
    id;
    location;
    name;
    parameters;
    resource_group_name;
    scopes;
    service_provider_name;
    tags;
    timeouts;
  }

type t = {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parameters : (string * string) list prop;
  resource_group_name : string prop;
  scopes : string prop;
  service_provider_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?parameters ?scopes ?tags ?timeouts ~bot_name ~client_id
    ~client_secret ~location ~name ~resource_group_name
    ~service_provider_name __id =
  let __type = "azurerm_bot_connection" in
  let __attrs =
    ({
       bot_name = Prop.computed __type __id "bot_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       service_provider_name =
         Prop.computed __type __id "service_provider_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_connection
        (azurerm_bot_connection ?id ?parameters ?scopes ?tags
           ?timeouts ~bot_name ~client_id ~client_secret ~location
           ~name ~resource_group_name ~service_provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ?scopes ?tags ?timeouts ~bot_name ~client_id
      ~client_secret ~location ~name ~resource_group_name
      ~service_provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
