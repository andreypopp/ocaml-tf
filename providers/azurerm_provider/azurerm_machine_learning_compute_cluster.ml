(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_compute_cluster__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__identity *)

type azurerm_machine_learning_compute_cluster__scale_settings = {
  max_node_count : float prop;  (** max_node_count *)
  min_node_count : float prop;  (** min_node_count *)
  scale_down_nodes_after_idle_duration : string prop;
      (** scale_down_nodes_after_idle_duration *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__scale_settings *)

type azurerm_machine_learning_compute_cluster__ssh = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  key_value : string prop option; [@option]  (** key_value *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__ssh *)

type azurerm_machine_learning_compute_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster__timeouts *)

type azurerm_machine_learning_compute_cluster = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  machine_learning_workspace_id : string prop;
      (** machine_learning_workspace_id *)
  name : string prop;  (** name *)
  node_public_ip_enabled : bool prop option; [@option]
      (** node_public_ip_enabled *)
  ssh_public_access_enabled : bool prop option; [@option]
      (** ssh_public_access_enabled *)
  subnet_resource_id : string prop option; [@option]
      (** subnet_resource_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vm_priority : string prop;  (** vm_priority *)
  vm_size : string prop;  (** vm_size *)
  identity : azurerm_machine_learning_compute_cluster__identity list;
  scale_settings :
    azurerm_machine_learning_compute_cluster__scale_settings list;
  ssh : azurerm_machine_learning_compute_cluster__ssh list;
  timeouts :
    azurerm_machine_learning_compute_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster *)

let azurerm_machine_learning_compute_cluster ?description ?id
    ?local_auth_enabled ?node_public_ip_enabled
    ?ssh_public_access_enabled ?subnet_resource_id ?tags ?timeouts
    ~location ~machine_learning_workspace_id ~name ~vm_priority
    ~vm_size ~identity ~scale_settings ~ssh __resource_id =
  let __resource_type = "azurerm_machine_learning_compute_cluster" in
  let __resource =
    {
      description;
      id;
      local_auth_enabled;
      location;
      machine_learning_workspace_id;
      name;
      node_public_ip_enabled;
      ssh_public_access_enabled;
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
