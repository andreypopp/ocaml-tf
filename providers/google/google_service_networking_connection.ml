(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?deletion_policy ?id ?timeouts ~network
    ~reserved_peering_ranges ~service __id =
  let __type = "google_service_networking_connection" in
  let __attrs =
    ({
       deletion_policy = Prop.computed __type __id "deletion_policy";
       id = Prop.computed __type __id "id";
       network = Prop.computed __type __id "network";
       peering = Prop.computed __type __id "peering";
       reserved_peering_ranges =
         Prop.computed __type __id "reserved_peering_ranges";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_networking_connection
        (google_service_networking_connection ?deletion_policy ?id
           ?timeouts ~network ~reserved_peering_ranges ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_policy ?id ?timeouts ~network
    ~reserved_peering_ranges ~service __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_policy ?id ?timeouts ~network
      ~reserved_peering_ranges ~service __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
