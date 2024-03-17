(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_load_balancer_frontend__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_frontend__timeouts *)

type azurerm_application_load_balancer_frontend = {
  application_load_balancer_id : string;
      (** application_load_balancer_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_application_load_balancer_frontend__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_load_balancer_frontend *)

let azurerm_application_load_balancer_frontend ?id ?tags ?timeouts
    ~application_load_balancer_id ~name __resource_id =
  let __resource_type =
    "azurerm_application_load_balancer_frontend"
  in
  let __resource =
    { application_load_balancer_id; id; name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_load_balancer_frontend __resource);
  ()
