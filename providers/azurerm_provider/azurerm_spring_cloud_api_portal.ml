(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_api_portal__sso = {
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  issuer_uri : string prop option; [@option]  (** issuer_uri *)
  scope : string prop list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal__sso *)

type azurerm_spring_cloud_api_portal__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal__timeouts *)

type azurerm_spring_cloud_api_portal = {
  api_try_out_enabled : bool prop option; [@option]
      (** api_try_out_enabled *)
  gateway_ids : string prop list option; [@option]
      (** gateway_ids *)
  https_only_enabled : bool prop option; [@option]
      (** https_only_enabled *)
  id : string prop option; [@option]  (** id *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  sso : azurerm_spring_cloud_api_portal__sso list;
  timeouts : azurerm_spring_cloud_api_portal__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_api_portal *)

let azurerm_spring_cloud_api_portal ?api_try_out_enabled ?gateway_ids
    ?https_only_enabled ?id ?instance_count
    ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso __resource_id =
  let __resource_type = "azurerm_spring_cloud_api_portal" in
  let __resource =
    {
      api_try_out_enabled;
      gateway_ids;
      https_only_enabled;
      id;
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
