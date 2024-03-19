(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type custom_persistent_disk = {
  mount_options : string prop list option; [@option]
      (** mount_options *)
  mount_path : string prop;  (** mount_path *)
  read_only_enabled : bool prop option; [@option]
      (** read_only_enabled *)
  share_name : string prop;  (** share_name *)
  storage_name : string prop;  (** storage_name *)
}
[@@deriving yojson_of]
(** custom_persistent_disk *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type ingress_settings = {
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
(** ingress_settings *)

type persistent_disk = {
  mount_path : string prop option; [@option]  (** mount_path *)
  size_in_gb : float prop;  (** size_in_gb *)
}
[@@deriving yojson_of]
(** persistent_disk *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  custom_persistent_disk : custom_persistent_disk list;
  identity : identity list;
  ingress_settings : ingress_settings list;
  persistent_disk : persistent_disk list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app *)

let custom_persistent_disk ?mount_options ?read_only_enabled
    ~mount_path ~share_name ~storage_name () : custom_persistent_disk
    =
  {
    mount_options;
    mount_path;
    read_only_enabled;
    share_name;
    storage_name;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let ingress_settings ?backend_protocol ?read_timeout_in_seconds
    ?send_timeout_in_seconds ?session_affinity
    ?session_cookie_max_age () : ingress_settings =
  {
    backend_protocol;
    read_timeout_in_seconds;
    send_timeout_in_seconds;
    session_affinity;
    session_cookie_max_age;
  }

let persistent_disk ?mount_path ~size_in_gb () : persistent_disk =
  { mount_path; size_in_gb }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled ?timeouts ~name
    ~resource_group_name ~service_name ~custom_persistent_disk
    ~identity ~ingress_settings ~persistent_disk () :
    azurerm_spring_cloud_app =
  {
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

let register ?tf_module ?addon_json ?https_only ?id ?is_public
    ?public_endpoint_enabled ?tls_enabled ?timeouts ~name
    ~resource_group_name ~service_name ~custom_persistent_disk
    ~identity ~ingress_settings ~persistent_disk __resource_id =
  let __resource_type = "azurerm_spring_cloud_app" in
  let __resource =
    azurerm_spring_cloud_app ?addon_json ?https_only ?id ?is_public
      ?public_endpoint_enabled ?tls_enabled ?timeouts ~name
      ~resource_group_name ~service_name ~custom_persistent_disk
      ~identity ~ingress_settings ~persistent_disk ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
