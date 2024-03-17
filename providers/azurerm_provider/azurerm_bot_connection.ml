(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_bot_connection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_connection__timeouts *)

type azurerm_bot_connection = {
  bot_name : string;  (** bot_name *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  location : string;  (** location *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_group_name : string;  (** resource_group_name *)
  scopes : string option; [@option]  (** scopes *)
  service_provider_name : string;  (** service_provider_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_bot_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_connection *)

let azurerm_bot_connection ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name __resource_id =
  let __resource_type = "azurerm_bot_connection" in
  let __resource =
    {
      bot_name;
      client_id;
      client_secret;
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
