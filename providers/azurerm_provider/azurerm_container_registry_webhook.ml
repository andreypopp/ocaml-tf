(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_webhook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_webhook__timeouts *)

type azurerm_container_registry_webhook = {
  actions : string list;  (** actions *)
  custom_headers : (string * string) list option; [@option]
      (** custom_headers *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  registry_name : string;  (** registry_name *)
  resource_group_name : string;  (** resource_group_name *)
  scope : string option; [@option]  (** scope *)
  service_uri : string;  (** service_uri *)
  status : string option; [@option]  (** status *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_container_registry_webhook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_webhook *)

let azurerm_container_registry_webhook ?custom_headers ?id ?scope
    ?status ?tags ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri __resource_id =
  let __resource_type = "azurerm_container_registry_webhook" in
  let __resource =
    {
      actions;
      custom_headers;
      id;
      location;
      name;
      registry_name;
      resource_group_name;
      scope;
      service_uri;
      status;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_webhook __resource);
  ()
