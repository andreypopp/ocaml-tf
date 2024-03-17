(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_gateway_route_config__open_api = {
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__open_api *)

type azurerm_spring_cloud_gateway_route_config__route = {
  classification_tags : string list option; [@option]
      (** classification_tags *)
  description : string option; [@option]  (** description *)
  filters : string list option; [@option]  (** filters *)
  order : float;  (** order *)
  predicates : string list option; [@option]  (** predicates *)
  sso_validation_enabled : bool option; [@option]
      (** sso_validation_enabled *)
  title : string option; [@option]  (** title *)
  token_relay : bool option; [@option]  (** token_relay *)
  uri : string option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__route *)

type azurerm_spring_cloud_gateway_route_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__timeouts *)

type azurerm_spring_cloud_gateway_route_config = {
  filters : string list option; [@option]  (** filters *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  predicates : string list option; [@option]  (** predicates *)
  protocol : string option; [@option]  (** protocol *)
  spring_cloud_app_id : string option; [@option]
      (** spring_cloud_app_id *)
  spring_cloud_gateway_id : string;  (** spring_cloud_gateway_id *)
  sso_validation_enabled : bool option; [@option]
      (** sso_validation_enabled *)
  open_api :
    azurerm_spring_cloud_gateway_route_config__open_api list;
  route : azurerm_spring_cloud_gateway_route_config__route list;
  timeouts :
    azurerm_spring_cloud_gateway_route_config__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config *)

let azurerm_spring_cloud_gateway_route_config ?filters ?id
    ?predicates ?protocol ?spring_cloud_app_id
    ?sso_validation_enabled ?timeouts ~name ~spring_cloud_gateway_id
    ~open_api ~route __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_gateway_route_config"
  in
  let __resource =
    {
      filters;
      id;
      name;
      predicates;
      protocol;
      spring_cloud_app_id;
      spring_cloud_gateway_id;
      sso_validation_enabled;
      open_api;
      route;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_gateway_route_config __resource);
  ()
