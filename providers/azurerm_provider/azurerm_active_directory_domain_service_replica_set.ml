(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_active_directory_domain_service_replica_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_replica_set__timeouts *)

type azurerm_active_directory_domain_service_replica_set = {
  domain_service_id : string;  (** domain_service_id *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  subnet_id : string;  (** subnet_id *)
  timeouts :
    azurerm_active_directory_domain_service_replica_set__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_replica_set *)

let azurerm_active_directory_domain_service_replica_set ?id ?timeouts
    ~domain_service_id ~location ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_active_directory_domain_service_replica_set"
  in
  let __resource =
    { domain_service_id; id; location; subnet_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service_replica_set
       __resource);
  ()
