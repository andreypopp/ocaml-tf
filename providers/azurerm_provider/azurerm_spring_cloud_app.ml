(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app__custom_persistent_disk = {
  mount_options : string list option; [@option]  (** mount_options *)
  mount_path : string;  (** mount_path *)
  read_only_enabled : bool option; [@option]
      (** read_only_enabled *)
  share_name : string;  (** share_name *)
  storage_name : string;  (** storage_name *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__custom_persistent_disk *)

type azurerm_spring_cloud_app__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__identity *)

type azurerm_spring_cloud_app__ingress_settings = {
  backend_protocol : string option; [@option]
      (** backend_protocol *)
  read_timeout_in_seconds : float option; [@option]
      (** read_timeout_in_seconds *)
  send_timeout_in_seconds : float option; [@option]
      (** send_timeout_in_seconds *)
  session_affinity : string option; [@option]
      (** session_affinity *)
  session_cookie_max_age : float option; [@option]
      (** session_cookie_max_age *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__ingress_settings *)

type azurerm_spring_cloud_app__persistent_disk = {
  mount_path : string option; [@option]  (** mount_path *)
  size_in_gb : float;  (** size_in_gb *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__persistent_disk *)

type azurerm_spring_cloud_app__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__timeouts *)

type azurerm_spring_cloud_app = {
  https_only : bool option; [@option]  (** https_only *)
  is_public : bool option; [@option]  (** is_public *)
  name : string;  (** name *)
  public_endpoint_enabled : bool option; [@option]
      (** public_endpoint_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  service_name : string;  (** service_name *)
  tls_enabled : bool option; [@option]  (** tls_enabled *)
  custom_persistent_disk :
    azurerm_spring_cloud_app__custom_persistent_disk list;
  identity : azurerm_spring_cloud_app__identity list;
  ingress_settings : azurerm_spring_cloud_app__ingress_settings list;
  persistent_disk : azurerm_spring_cloud_app__persistent_disk list;
  timeouts : azurerm_spring_cloud_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app *)

let azurerm_spring_cloud_app ?https_only ?is_public
    ?public_endpoint_enabled ?tls_enabled ?timeouts ~name
    ~resource_group_name ~service_name ~custom_persistent_disk
    ~identity ~ingress_settings ~persistent_disk __resource_id =
  let __resource_type = "azurerm_spring_cloud_app" in
  let __resource =
    {
      https_only;
      is_public;
      name;
      public_endpoint_enabled;
      resource_group_name;
      service_name;
      tls_enabled;
      custom_persistent_disk;
      identity;
      ingress_settings;
      persistent_disk;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app __resource);
  ()
