(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_connection__timeouts *)

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
  timeouts : azurerm_bot_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_connection *)

let azurerm_bot_connection ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name __resource_id =
  let __resource_type = "azurerm_bot_connection" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_connection __resource);
  ()
