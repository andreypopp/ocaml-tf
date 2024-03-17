(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_active_directory_domain_service_replica_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_replica_set__timeouts *)

type azurerm_active_directory_domain_service_replica_set = {
  domain_service_id : string prop;  (** domain_service_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  subnet_id : string prop;  (** subnet_id *)
  timeouts :
    azurerm_active_directory_domain_service_replica_set__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_replica_set *)

type t = {
  domain_controller_ip_addresses : string list prop;
  domain_service_id : string prop;
  external_access_ip_address : string prop;
  id : string prop;
  location : string prop;
  service_status : string prop;
  subnet_id : string prop;
}

let azurerm_active_directory_domain_service_replica_set ?id ?timeouts
    ~domain_service_id ~location ~subnet_id __resource_id =
  let __resource_type =
    "azurerm_active_directory_domain_service_replica_set"
  in
  let __resource =
    ({ domain_service_id; id; location; subnet_id; timeouts }
      : azurerm_active_directory_domain_service_replica_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service_replica_set
       __resource);
  let __resource_attributes =
    ({
       domain_controller_ip_addresses =
         Prop.computed __resource_type __resource_id
           "domain_controller_ip_addresses";
       domain_service_id =
         Prop.computed __resource_type __resource_id
           "domain_service_id";
       external_access_ip_address =
         Prop.computed __resource_type __resource_id
           "external_access_ip_address";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       service_status =
         Prop.computed __resource_type __resource_id "service_status";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
