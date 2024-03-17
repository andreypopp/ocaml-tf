(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_environment_v3__cluster_setting = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3__cluster_setting *)

type azurerm_app_service_environment_v3__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_environment_v3__timeouts *)

type azurerm_app_service_environment_v3__inbound_network_dependencies = {
  description : string;  (** description *)
  ip_addresses : string list;  (** ip_addresses *)
  ports : string list;  (** ports *)
}
[@@deriving yojson_of]

type azurerm_app_service_environment_v3 = {
  allow_new_private_endpoint_connections : bool option; [@option]
      (** allow_new_private_endpoint_connections *)
  dedicated_host_count : float option; [@option]
      (** dedicated_host_count *)
  id : string option; [@option]  (** id *)
  internal_load_balancing_mode : string option; [@option]
      (** internal_load_balancing_mode *)
  name : string;  (** name *)
  remote_debugging_enabled : bool option; [@option]
      (** remote_debugging_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
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
