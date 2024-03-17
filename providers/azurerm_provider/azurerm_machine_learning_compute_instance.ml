(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_compute_instance__assign_to_user = {
  object_id : string prop option; [@option]  (** object_id *)
  tenant_id : string prop option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__assign_to_user *)

type azurerm_machine_learning_compute_instance__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__identity *)

type azurerm_machine_learning_compute_instance__ssh = {
  port : float prop;  (** port *)
  public_key : string prop;  (** public_key *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__ssh *)

type azurerm_machine_learning_compute_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__timeouts *)

type azurerm_machine_learning_compute_instance = {
  authorization_type : string prop option; [@option]
      (** authorization_type *)
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
  subnet_resource_id : string prop option; [@option]
      (** subnet_resource_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_machine_size : string prop;  (** virtual_machine_size *)
  assign_to_user :
    azurerm_machine_learning_compute_instance__assign_to_user list;
  identity :
    azurerm_machine_learning_compute_instance__identity list;
  ssh : azurerm_machine_learning_compute_instance__ssh list;
  timeouts :
    azurerm_machine_learning_compute_instance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance *)

let azurerm_machine_learning_compute_instance ?authorization_type
    ?description ?id ?local_auth_enabled ?node_public_ip_enabled
    ?subnet_resource_id ?tags ?timeouts ~location
    ~machine_learning_workspace_id ~name ~virtual_machine_size
    ~assign_to_user ~identity ~ssh __resource_id =
  let __resource_type =
    "azurerm_machine_learning_compute_instance"
  in
  let __resource =
    {
      authorization_type;
      description;
      id;
      local_auth_enabled;
      location;
      machine_learning_workspace_id;
      name;
      node_public_ip_enabled;
      subnet_resource_id;
      tags;
      virtual_machine_size;
      assign_to_user;
      identity;
      ssh;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_machine_learning_compute_instance __resource);
  ()
