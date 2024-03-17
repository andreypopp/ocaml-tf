(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_environment_v3__cluster_setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3__cluster_setting *)

type azurerm_app_service_environment_v3__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3__timeouts *)

type azurerm_app_service_environment_v3__inbound_network_dependencies = {
  description : string prop;  (** description *)
  ip_addresses : string prop list;  (** ip_addresses *)
  ports : string prop list;  (** ports *)
}
[@@deriving yojson_of]

type azurerm_app_service_environment_v3 = {
  allow_new_private_endpoint_connections : bool prop option;
      [@option]
      (** allow_new_private_endpoint_connections *)
  dedicated_host_count : float prop option; [@option]
      (** dedicated_host_count *)
  id : string prop option; [@option]  (** id *)
  internal_load_balancing_mode : string prop option; [@option]
      (** internal_load_balancing_mode *)
  name : string prop;  (** name *)
  remote_debugging_enabled : bool prop option; [@option]
      (** remote_debugging_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  cluster_setting :
    azurerm_app_service_environment_v3__cluster_setting list;
  timeouts : azurerm_app_service_environment_v3__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3 *)

let azurerm_app_service_environment_v3
    ?allow_new_private_endpoint_connections ?dedicated_host_count ?id
    ?internal_load_balancing_mode ?remote_debugging_enabled ?tags
    ?zone_redundant ?timeouts ~name ~resource_group_name ~subnet_id
    ~cluster_setting __resource_id =
  let __resource_type = "azurerm_app_service_environment_v3" in
  let __resource =
    {
      allow_new_private_endpoint_connections;
      dedicated_host_count;
      id;
      internal_load_balancing_mode;
      name;
      remote_debugging_enabled;
      resource_group_name;
      subnet_id;
      tags;
      zone_redundant;
      cluster_setting;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_environment_v3 __resource);
  ()
