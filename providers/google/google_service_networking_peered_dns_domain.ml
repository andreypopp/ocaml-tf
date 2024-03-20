(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?project ?service ?timeouts ~dns_suffix ~name ~network
    __id =
  let __type = "google_service_networking_peered_dns_domain" in
  let __attrs =
    ({
       dns_suffix = Prop.computed __type __id "dns_suffix";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       parent = Prop.computed __type __id "parent";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_networking_peered_dns_domain
        (google_service_networking_peered_dns_domain ?id ?project
           ?service ?timeouts ~dns_suffix ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?service ?timeouts ~dns_suffix
    ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?service ?timeouts ~dns_suffix ~name ~network
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
