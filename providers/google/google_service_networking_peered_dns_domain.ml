(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_service_networking_peered_dns_domain = {
  dns_suffix : string prop;
      (** The DNS domain name suffix of the peered DNS domain. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the peered DNS domain. *)
  network : string prop;
      (** Network in the consumer project to peer with. *)
  project : string prop option; [@option]
      (** The ID of the project that the service account will be created in. Defaults to the provider project configuration. *)
  service : string prop option; [@option]
      (** The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_service_networking_peered_dns_domain *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let google_service_networking_peered_dns_domain ?id ?project ?service
    ?timeouts ~dns_suffix ~name ~network () :
    google_service_networking_peered_dns_domain =
  { dns_suffix; id; name; network; project; service; timeouts }

type t = {
  dns_suffix : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  project : string prop;
  service : string prop;
}

let register ?tf_module ?id ?project ?service ?timeouts ~dns_suffix
    ~name ~network __resource_id =
  let __resource_type =
    "google_service_networking_peered_dns_domain"
  in
  let __resource =
    google_service_networking_peered_dns_domain ?id ?project ?service
      ?timeouts ~dns_suffix ~name ~network ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_service_networking_peered_dns_domain __resource);
  let __resource_attributes =
    ({
       dns_suffix =
         Prop.computed __resource_type __resource_id "dns_suffix";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       parent = Prop.computed __resource_type __resource_id "parent";
       project =
         Prop.computed __resource_type __resource_id "project";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes
