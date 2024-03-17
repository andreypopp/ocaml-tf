(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_gateway_route_config__open_api = {
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__open_api *)

type azurerm_spring_cloud_gateway_route_config__route = {
  classification_tags : string prop list option; [@option]
      (** classification_tags *)
  description : string prop option; [@option]  (** description *)
  filters : string prop list option; [@option]  (** filters *)
  order : float prop;  (** order *)
  predicates : string prop list option; [@option]  (** predicates *)
  sso_validation_enabled : bool prop option; [@option]
      (** sso_validation_enabled *)
  title : string prop option; [@option]  (** title *)
  token_relay : bool prop option; [@option]  (** token_relay *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__route *)

type azurerm_spring_cloud_gateway_route_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_gateway_route_config__timeouts *)

type azurerm_spring_cloud_gateway_route_config = {
  filters : string prop list option; [@option]  (** filters *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  predicates : string prop list option; [@option]  (** predicates *)
  protocol : string prop option; [@option]  (** protocol *)
  spring_cloud_app_id : string prop option; [@option]
      (** spring_cloud_app_id *)
  spring_cloud_gateway_id : string prop;
      (** spring_cloud_gateway_id *)
  sso_validation_enabled : bool prop option; [@option]
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
