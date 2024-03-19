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

let register ?tf_module ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name __resource_id =
  let __resource_type = "azurerm_bot_connection" in
  let __resource =
    azurerm_bot_connection ?id ?parameters ?scopes ?tags ?timeouts
      ~bot_name ~client_id ~client_secret ~location ~name
      ~resource_group_name ~service_provider_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_connection __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       client_id =
         Prop.computed __resource_type __resource_id "client_id";
       client_secret =
         Prop.computed __resource_type __resource_id "client_secret";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scopes = Prop.computed __resource_type __resource_id "scopes";
       service_provider_name =
         Prop.computed __resource_type __resource_id
           "service_provider_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
