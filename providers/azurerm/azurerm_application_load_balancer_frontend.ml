(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_load_balancer_frontend__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_frontend__timeouts *)

type azurerm_application_load_balancer_frontend = {
  application_load_balancer_id : string prop;
      (** application_load_balancer_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_application_load_balancer_frontend__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_frontend *)

type t = {
  application_load_balancer_id : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_application_load_balancer_frontend ?id ?tags ?timeouts
    ~application_load_balancer_id ~name __resource_id =
  let __resource_type =
    "azurerm_application_load_balancer_frontend"
  in
  let __resource =
    ({ application_load_balancer_id; id; name; tags; timeouts }
      : azurerm_application_load_balancer_frontend)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_load_balancer_frontend __resource);
  let __resource_attributes =
    ({
       application_load_balancer_id =
         Prop.computed __resource_type __resource_id
           "application_load_balancer_id";
       fully_qualified_domain_name =
         Prop.computed __resource_type __resource_id
           "fully_qualified_domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
