(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_api_portal__sso = {
  client_id : string option; [@option]  (** client_id *)
  client_secret : string option; [@option]  (** client_secret *)
  issuer_uri : string option; [@option]  (** issuer_uri *)
  scope : string list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal__sso *)

type azurerm_spring_cloud_api_portal__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal__timeouts *)

type azurerm_spring_cloud_api_portal = {
  api_try_out_enabled : bool option; [@option]
      (** api_try_out_enabled *)
  gateway_ids : string list option; [@option]  (** gateway_ids *)
  https_only_enabled : bool option; [@option]
      (** https_only_enabled *)
  instance_count : float option; [@option]  (** instance_count *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  sso : azurerm_spring_cloud_api_portal__sso list;
  timeouts : azurerm_spring_cloud_api_portal__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal *)

let azurerm_spring_cloud_api_portal ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?instance_count
    ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso __resource_id =
  let __resource_type = "azurerm_spring_cloud_api_portal" in
  let __resource =
    {
      api_try_out_enabled;
      gateway_ids;
      https_only_enabled;
      instance_count;
      name;
      public_network_access_enabled;
      spring_cloud_service_id;
      sso;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_api_portal __resource);
  ()
