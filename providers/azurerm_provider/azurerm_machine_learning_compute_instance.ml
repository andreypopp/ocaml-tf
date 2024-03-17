(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_machine_learning_compute_instance__assign_to_user = {
  object_id : string option; [@option]  (** object_id *)
  tenant_id : string option; [@option]  (** tenant_id *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__assign_to_user *)

type azurerm_machine_learning_compute_instance__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__identity *)

type azurerm_machine_learning_compute_instance__ssh = {
  port : float;  (** port *)
  public_key : string;  (** public_key *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__ssh *)

type azurerm_machine_learning_compute_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_machine_learning_compute_instance__timeouts *)

type azurerm_machine_learning_compute_instance = {
  authorization_type : string option; [@option]
      (** authorization_type *)
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
  virtual_machine_size : string;  (** virtual_machine_size *)
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
    ?description ?local_auth_enabled ?node_public_ip_enabled
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
