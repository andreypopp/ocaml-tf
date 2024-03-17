(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_policy_virtual_machine_configuration_assignment__configuration__parameter = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment__configuration__parameter *)

type azurerm_policy_virtual_machine_configuration_assignment__configuration = {
  assignment_type : string option; [@option]  (** assignment_type *)
  content_hash : string option; [@option]  (** content_hash *)
  content_uri : string option; [@option]  (** content_uri *)
  version : string option; [@option]  (** version *)
  parameter :
    azurerm_policy_virtual_machine_configuration_assignment__configuration__parameter
    list;
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment__configuration *)

type azurerm_policy_virtual_machine_configuration_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment__timeouts *)

type azurerm_policy_virtual_machine_configuration_assignment = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  virtual_machine_id : string;  (** virtual_machine_id *)
  configuration :
    azurerm_policy_virtual_machine_configuration_assignment__configuration
    list;
  timeouts :
    azurerm_policy_virtual_machine_configuration_assignment__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment *)

let azurerm_policy_virtual_machine_configuration_assignment ?id
    ?timeouts ~location ~name ~virtual_machine_id ~configuration
    __resource_id =
  let __resource_type =
    "azurerm_policy_virtual_machine_configuration_assignment"
  in
  let __resource =
    {
      id;
      location;
      name;
      virtual_machine_id;
      configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_virtual_machine_configuration_assignment
       __resource);
  ()
