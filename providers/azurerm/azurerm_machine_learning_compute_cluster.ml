(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type scale_settings = {
  max_node_count : float prop;  (** max_node_count *)
  min_node_count : float prop;  (** min_node_count *)
  scale_down_nodes_after_idle_duration : string prop;
      (** scale_down_nodes_after_idle_duration *)
}
[@@deriving yojson_of]
(** scale_settings *)

type ssh = {
  admin_password : string prop option; [@option]
      (** admin_password *)
  admin_username : string prop;  (** admin_username *)
  key_value : string prop option; [@option]  (** key_value *)
}
[@@deriving yojson_of]
(** ssh *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  identity : identity list;
  scale_settings : scale_settings list;
  ssh : ssh list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_cluster *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let scale_settings ~max_node_count ~min_node_count
    ~scale_down_nodes_after_idle_duration () : scale_settings =
  {
    max_node_count;
    min_node_count;
    scale_down_nodes_after_idle_duration;
  }

let ssh ?admin_password ?key_value ~admin_username () : ssh =
  { admin_password; admin_username; key_value }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_machine_learning_compute_cluster ?description ?id
    ?local_auth_enabled ?node_public_ip_enabled
    ?ssh_public_access_enabled ?subnet_resource_id ?tags ?timeouts
    ~location ~machine_learning_workspace_id ~name ~vm_priority
    ~vm_size ~identity ~scale_settings ~ssh () :
    azurerm_machine_learning_compute_cluster =
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

type t = {
  description : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  machine_learning_workspace_id : string prop;
  name : string prop;
  node_public_ip_enabled : bool prop;
  ssh_public_access_enabled : bool prop;
  subnet_resource_id : string prop;
  tags : (string * string) list prop;
  vm_priority : string prop;
  vm_size : string prop;
}

let register ?tf_module ?description ?id ?local_auth_enabled
    ?node_public_ip_enabled ?ssh_public_access_enabled
    ?subnet_resource_id ?tags ?timeouts ~location
    ~machine_learning_workspace_id ~name ~vm_priority ~vm_size
    ~identity ~scale_settings ~ssh __resource_id =
  let __resource_type = "azurerm_machine_learning_compute_cluster" in
  let __resource =
    azurerm_machine_learning_compute_cluster ?description ?id
      ?local_auth_enabled ?node_public_ip_enabled
      ?ssh_public_access_enabled ?subnet_resource_id ?tags ?timeouts
      ~location ~machine_learning_workspace_id ~name ~vm_priority
      ~vm_size ~identity ~scale_settings ~ssh ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_compute_cluster __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       local_auth_enabled =
         Prop.computed __resource_type __resource_id
           "local_auth_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       machine_learning_workspace_id =
         Prop.computed __resource_type __resource_id
           "machine_learning_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       node_public_ip_enabled =
         Prop.computed __resource_type __resource_id
           "node_public_ip_enabled";
       ssh_public_access_enabled =
         Prop.computed __resource_type __resource_id
           "ssh_public_access_enabled";
       subnet_resource_id =
         Prop.computed __resource_type __resource_id
           "subnet_resource_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       vm_priority =
         Prop.computed __resource_type __resource_id "vm_priority";
       vm_size =
         Prop.computed __resource_type __resource_id "vm_size";
     }
      : t)
  in
  __resource_attributes
