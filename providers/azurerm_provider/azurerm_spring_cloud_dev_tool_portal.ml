(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_dev_tool_portal__sso = {
  client_id : string prop option; [@option]  (** client_id *)
  client_secret : string prop option; [@option]  (** client_secret *)
  metadata_url : string prop option; [@option]  (** metadata_url *)
  scope : string prop list option; [@option]  (** scope *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dev_tool_portal__sso *)

type azurerm_spring_cloud_dev_tool_portal__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dev_tool_portal__timeouts *)

type azurerm_spring_cloud_dev_tool_portal = {
  application_accelerator_enabled : bool prop option; [@option]
      (** application_accelerator_enabled *)
  application_live_view_enabled : bool prop option; [@option]
      (** application_live_view_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  sso : azurerm_spring_cloud_dev_tool_portal__sso list;
  timeouts : azurerm_spring_cloud_dev_tool_portal__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dev_tool_portal *)

let azurerm_spring_cloud_dev_tool_portal
    ?application_accelerator_enabled ?application_live_view_enabled
    ?id ?public_network_access_enabled ?timeouts ~name
    ~spring_cloud_service_id ~sso __resource_id =
  let __resource_type = "azurerm_spring_cloud_dev_tool_portal" in
  let __resource =
    {
      application_accelerator_enabled;
      application_live_view_enabled;
      id;
      name;
      public_network_access_enabled;
      spring_cloud_service_id;
      sso;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_dev_tool_portal __resource);
  ()
