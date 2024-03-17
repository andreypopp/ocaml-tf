(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app__custom_persistent_disk = {
  mount_options : string prop list option; [@option]
      (** mount_options *)
  mount_path : string prop;  (** mount_path *)
  read_only_enabled : bool prop option; [@option]
      (** read_only_enabled *)
  share_name : string prop;  (** share_name *)
  storage_name : string prop;  (** storage_name *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__custom_persistent_disk *)

type azurerm_spring_cloud_app__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__identity *)

type azurerm_spring_cloud_app__ingress_settings = {
  backend_protocol : string prop option; [@option]
      (** backend_protocol *)
  read_timeout_in_seconds : float prop option; [@option]
      (** read_timeout_in_seconds *)
  send_timeout_in_seconds : float prop option; [@option]
      (** send_timeout_in_seconds *)
  session_affinity : string prop option; [@option]
      (** session_affinity *)
  session_cookie_max_age : float prop option; [@option]
      (** session_cookie_max_age *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__ingress_settings *)

type azurerm_spring_cloud_app__persistent_disk = {
  mount_path : string prop option; [@option]  (** mount_path *)
  size_in_gb : float prop;  (** size_in_gb *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__persistent_disk *)

type azurerm_spring_cloud_app__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app__timeouts *)

type azurerm_spring_cloud_app = {
  addon_json : string prop option; [@option]  (** addon_json *)
  https_only : bool prop option; [@option]  (** https_only *)
  id : string prop option; [@option]  (** id *)
  is_public : bool prop option; [@option]  (** is_public *)
  name : string prop;  (** name *)
  public_endpoint_enabled : bool prop option; [@option]
      (** public_endpoint_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_name : string prop;  (** service_name *)
  tls_enabled : bool prop option; [@option]  (** tls_enabled *)
  custom_persistent_disk :
    azurerm_spring_cloud_app__custom_persistent_disk list;
  identity : azurerm_spring_cloud_app__identity list;
  ingress_settings : azurerm_spring_cloud_app__ingress_settings list;
  persistent_disk : azurerm_spring_cloud_app__persistent_disk list;
  timeouts : azurerm_spring_cloud_app__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app *)

type t = {
  addon_json : string prop;
  fqdn : string prop;
  https_only : bool prop;
  id : string prop;
  is_public : bool prop;
  name : string prop;
  public_endpoint_enabled : bool prop;
  resource_group_name : string prop;
  service_name : string prop;
  tls_enabled : bool prop;
  url : string prop;
}

let azurerm_spring_cloud_app ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled ?timeouts ~name
    ~resource_group_name ~service_name ~custom_persistent_disk
    ~identity ~ingress_settings ~persistent_disk __resource_id =
  let __resource_type = "azurerm_spring_cloud_app" in
  let __resource =
    ({
       addon_json;
       https_only;
       id;
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
      : azurerm_spring_cloud_app)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app __resource);
  let __resource_attributes =
    ({
       addon_json =
         Prop.computed __resource_type __resource_id "addon_json";
       fqdn = Prop.computed __resource_type __resource_id "fqdn";
       https_only =
         Prop.computed __resource_type __resource_id "https_only";
       id = Prop.computed __resource_type __resource_id "id";
       is_public =
         Prop.computed __resource_type __resource_id "is_public";
       name = Prop.computed __resource_type __resource_id "name";
       public_endpoint_enabled =
         Prop.computed __resource_type __resource_id
           "public_endpoint_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       service_name =
         Prop.computed __resource_type __resource_id "service_name";
       tls_enabled =
         Prop.computed __resource_type __resource_id "tls_enabled";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes
