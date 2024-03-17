(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_load_balancer_subnet_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_subnet_association__timeouts *)

type azurerm_application_load_balancer_subnet_association = {
  application_load_balancer_id : string prop;
      (** application_load_balancer_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_application_load_balancer_subnet_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_subnet_association *)

let azurerm_application_load_balancer_subnet_association ?id ?tags
    ?timeouts ~application_load_balancer_id ~name ~subnet_id
    __resource_id =
  let __resource_type =
    "azurerm_application_load_balancer_subnet_association"
  in
  let __resource =
    {
      application_load_balancer_id;
      id;
      name;
      subnet_id;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_load_balancer_subnet_association
       __resource);
  ()
