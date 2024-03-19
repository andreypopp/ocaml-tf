(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_service_networking_connection = {
  deletion_policy : string prop option; [@option]
      (** When set to ABANDON, terraform will abandon management of the resource instead of deleting it. Prevents terraform apply failures with CloudSQL. Note: The resource will still exist. *)
  id : string prop option; [@option]  (** id *)
  network : string prop;
      (** Name of VPC network connected with service producers using VPC peering. *)
  reserved_peering_ranges : string prop list;
      (** Named IP address range(s) of PEERING type reserved for this service provider. Note that invoking this method with a different range when connection is already established will not reallocate already provisioned service producer subnetworks. *)
  service : string prop;
      (** Provider peering service that is managing peering connectivity for a service provider organization. For Google services that support this functionality it is 'servicenetworking.googleapis.com'. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_service_networking_connection *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_service_networking_connection ?deletion_policy ?id
    ?timeouts ~network ~reserved_peering_ranges ~service () :
    google_service_networking_connection =
  {
    deletion_policy;
    id;
    network;
    reserved_peering_ranges;
    service;
    timeouts;
  }

type t = {
  deletion_policy : string prop;
  id : string prop;
  network : string prop;
  peering : string prop;
  reserved_peering_ranges : string list prop;
  service : string prop;
}

let register ?tf_module ?deletion_policy ?id ?timeouts ~network
    ~reserved_peering_ranges ~service __resource_id =
  let __resource_type = "google_service_networking_connection" in
  let __resource =
    google_service_networking_connection ?deletion_policy ?id
      ?timeouts ~network ~reserved_peering_ranges ~service ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_networking_connection __resource);
  let __resource_attributes =
    ({
       deletion_policy =
         Prop.computed __resource_type __resource_id
           "deletion_policy";
       id = Prop.computed __resource_type __resource_id "id";
       network =
         Prop.computed __resource_type __resource_id "network";
       peering =
         Prop.computed __resource_type __resource_id "peering";
       reserved_peering_ranges =
         Prop.computed __resource_type __resource_id
           "reserved_peering_ranges";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes
