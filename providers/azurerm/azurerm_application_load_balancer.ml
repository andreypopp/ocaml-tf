(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_load_balancer__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer__timeouts *)

type azurerm_application_load_balancer = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_application_load_balancer__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  primary_configuration_endpoint : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_application_load_balancer ?id ?tags ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_application_load_balancer" in
  let __resource =
    ({ id; location; name; resource_group_name; tags; timeouts }
      : azurerm_application_load_balancer)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_load_balancer __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       primary_configuration_endpoint =
         Prop.computed __resource_type __resource_id
           "primary_configuration_endpoint";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
