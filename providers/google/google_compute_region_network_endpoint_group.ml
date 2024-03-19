(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type app_engine = {
  service : string prop option; [@option]
      (** Optional serving service.
The service name must be 1-63 characters long, and comply with RFC1035.
Example value: default, my-service. *)
  url_mask : string prop option; [@option]
      (** A template to parse service and version fields from a request URL.
URL mask allows for routing to multiple App Engine services without
having to create multiple Network Endpoint Groups and backend services.

For example, the request URLs foo1-dot-appname.appspot.com/v1 and
foo1-dot-appname.appspot.com/v2 can be backed by the same Serverless NEG with
URL mask -dot-appname.appspot.com/. The URL mask will parse
them to { service = foo1, version = v1 } and { service = foo1, version = v2 } respectively. *)
  version : string prop option; [@option]
      (** Optional serving version.
The version must be 1-63 characters long, and comply with RFC1035.
Example value: v1, v2. *)
}
[@@deriving yojson_of]
(** This field is only used for SERVERLESS NEGs.

Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. *)

type cloud_function = {
  function_ : string prop option; [@option] [@key "function"]
      (** A user-defined name of the Cloud Function.
The function name is case-sensitive and must be 1-63 characters long.
Example value: func1. *)
  url_mask : string prop option; [@option]
      (** A template to parse function field from a request URL. URL mask allows
for routing to multiple Cloud Functions without having to create
multiple Network Endpoint Groups and backend services.

For example, request URLs mydomain.com/function1 and mydomain.com/function2
can be backed by the same Serverless NEG with URL mask /. The URL mask
will parse them to { function = function1 } and { function = function2 } respectively. *)
}
[@@deriving yojson_of]
(** This field is only used for SERVERLESS NEGs.

Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. *)

type cloud_run = {
  service : string prop option; [@option]
      (** Cloud Run service is the main resource of Cloud Run.
The service must be 1-63 characters long, and comply with RFC1035.
Example value: run-service. *)
  tag : string prop option; [@option]
      (** Cloud Run tag represents the named-revision to provide
additional fine-grained traffic routing information.
The tag must be 1-63 characters long, and comply with RFC1035.
Example value: revision-0010. *)
  url_mask : string prop option; [@option]
      (** A template to parse service and tag fields from a request URL.
URL mask allows for routing to multiple Run services without having
to create multiple network endpoint groups and backend services.

For example, request URLs foo1.domain.com/bar1 and foo1.domain.com/bar2
an be backed by the same Serverless Network Endpoint Group (NEG) with
URL mask .domain.com/. The URL mask will parse them to { service=bar1, tag=foo1 }
and { service=bar2, tag=foo2 } respectively. *)
}
[@@deriving yojson_of]
(** This field is only used for SERVERLESS NEGs.

Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_network_endpoint_group = {
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop option; [@option]
      (** This field is only used for PSC and INTERNET NEGs.

The URL of the network to which all network endpoints in the NEG belong. Uses
default project network if unspecified. *)
  network_endpoint_type : string prop option; [@option]
      (** Type of network endpoints in this network endpoint group. Defaults to SERVERLESS. Default value: SERVERLESS Possible values: [SERVERLESS, PRIVATE_SERVICE_CONNECT, INTERNET_IP_PORT, INTERNET_FQDN_PORT] *)
  project : string prop option; [@option]  (** project *)
  psc_target_service : string prop option; [@option]
      (** This field is only used for PSC and INTERNET NEGs.

The target service url used to set up private service connection to
a Google API or a PSC Producer Service Attachment. *)
  region : string prop;
      (** A reference to the region where the regional NEGs reside. *)
  subnetwork : string prop option; [@option]
      (** This field is only used for PSC NEGs.

Optional URL of the subnetwork to which all network endpoints in the NEG belong. *)
  app_engine : app_engine list;
  cloud_function : cloud_function list;
  cloud_run : cloud_run list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_network_endpoint_group *)

let app_engine ?service ?url_mask ?version () : app_engine =
  { service; url_mask; version }

let cloud_function ?function_ ?url_mask () : cloud_function =
  { function_; url_mask }

let cloud_run ?service ?tag ?url_mask () : cloud_run =
  { service; tag; url_mask }

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_network_endpoint_group ?description ?id
    ?network ?network_endpoint_type ?project ?psc_target_service
    ?subnetwork ?timeouts ~name ~region ~app_engine ~cloud_function
    ~cloud_run () : google_compute_region_network_endpoint_group =
  {
    description;
    id;
    name;
    network;
    network_endpoint_type;
    project;
    psc_target_service;
    region;
    subnetwork;
    app_engine;
    cloud_function;
    cloud_run;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  psc_target_service : string prop;
  region : string prop;
  self_link : string prop;
  subnetwork : string prop;
}

let register ?tf_module ?description ?id ?network
    ?network_endpoint_type ?project ?psc_target_service ?subnetwork
    ?timeouts ~name ~region ~app_engine ~cloud_function ~cloud_run
    __resource_id =
  let __resource_type =
    "google_compute_region_network_endpoint_group"
  in
  let __resource =
    google_compute_region_network_endpoint_group ?description ?id
      ?network ?network_endpoint_type ?project ?psc_target_service
      ?subnetwork ?timeouts ~name ~region ~app_engine ~cloud_function
      ~cloud_run ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_network_endpoint_group
       __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       network_endpoint_type =
         Prop.computed __resource_type __resource_id
           "network_endpoint_type";
       project =
         Prop.computed __resource_type __resource_id "project";
       psc_target_service =
         Prop.computed __resource_type __resource_id
           "psc_target_service";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
     }
      : t)
  in
  __resource_attributes
