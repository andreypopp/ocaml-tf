(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_machine_learning_compute_cluster__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__identity *)

type azurerm_machine_learning_compute_cluster__scale_settings = {
  max_node_count : float;  (** max_node_count *)
  min_node_count : float;  (** min_node_count *)
  scale_down_nodes_after_idle_duration : string;
      (** scale_down_nodes_after_idle_duration *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__scale_settings *)

type azurerm_machine_learning_compute_cluster__ssh = {
  admin_password : string option; [@option]  (** admin_password *)
  admin_username : string;  (** admin_username *)
  key_value : string option; [@option]  (** key_value *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__ssh *)

type azurerm_machine_learning_compute_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__timeouts *)

type azurerm_machine_learning_compute_cluster = {
  description : string option; [@option]  (** description *)
  local_auth_enabled : bool option; [@option]
      (** local_auth_enabled *)
  location : string;  (** location *)
  machine_learning_workspace_id : string;
      (** machine_learning_workspace_id *)
  name : string;  (** name *)
  node_public_ip_enabled : bool option; [@option]
      (** node_public_ip_enabled *)
  subnet_resource_id : string option; [@option]
      (** subnet_resource_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  vm_priority : string;  (** vm_priority *)
  vm_size : string;  (** vm_size *)
  identity : azurerm_machine_learning_compute_cluster__identity list;
  scale_settings :
    azurerm_machine_learning_compute_cluster__scale_settings list;
  ssh : azurerm_machine_learning_compute_cluster__ssh list;
  timeouts :
    azurerm_machine_learning_compute_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster *)

let azurerm_machine_learning_compute_cluster ?description
    ?local_auth_enabled ?node_public_ip_enabled ?subnet_resource_id
    ?tags ?timeouts ~location ~machine_learning_workspace_id ~name
    ~vm_priority ~vm_size ~identity ~scale_settings ~ssh
    __resource_id =
  let __resource_type = "azurerm_machine_learning_compute_cluster" in
  let __resource =
    {
      description;
      local_auth_enabled;
      location;
      machine_learning_workspace_id;
      name;
      node_public_ip_enabled;
      subnet_resource_id;
      tags;
      vm_priority;
      vm_size;
      identity;
      scale_settings;
      ssh;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_compute_cluster __resource);
  ()
