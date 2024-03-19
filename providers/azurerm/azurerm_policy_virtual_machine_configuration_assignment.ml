(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type configuration__parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** configuration__parameter *)

type configuration = {
  assignment_type : string prop option; [@option]
      (** assignment_type *)
  content_hash : string prop option; [@option]  (** content_hash *)
  content_uri : string prop option; [@option]  (** content_uri *)
  version : string prop option; [@option]  (** version *)
  parameter : configuration__parameter list;
}
[@@deriving yojson_of]
(** configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_policy_virtual_machine_configuration_assignment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  virtual_machine_id : string prop;  (** virtual_machine_id *)
  configuration : configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_policy_virtual_machine_configuration_assignment *)

let configuration__parameter ~name ~value () :
    configuration__parameter =
  { name; value }

let configuration ?assignment_type ?content_hash ?content_uri
    ?version ~parameter () : configuration =
  { assignment_type; content_hash; content_uri; version; parameter }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_policy_virtual_machine_configuration_assignment ?id
    ?timeouts ~location ~name ~virtual_machine_id ~configuration () :
    azurerm_policy_virtual_machine_configuration_assignment =
  { id; location; name; virtual_machine_id; configuration; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  virtual_machine_id : string prop;
}

let register ?tf_module ?id ?timeouts ~location ~name
    ~virtual_machine_id ~configuration __resource_id =
  let __resource_type =
    "azurerm_policy_virtual_machine_configuration_assignment"
  in
  let __resource =
    azurerm_policy_virtual_machine_configuration_assignment ?id
      ?timeouts ~location ~name ~virtual_machine_id ~configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_policy_virtual_machine_configuration_assignment
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "virtual_machine_id";
     }
      : t)
  in
  __resource_attributes
