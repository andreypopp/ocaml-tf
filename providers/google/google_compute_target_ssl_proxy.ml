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

type google_compute_target_ssl_proxy = {
  backend_service : string prop;
      (** A reference to the BackendService resource. *)
  certificate_map : string prop option; [@option]
      (** A reference to the CertificateMap resource uri that identifies a certificate map
associated with the given target proxy. This field can only be set for global target proxies.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}'. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to
the backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  ssl_certificates : string prop list option; [@option]
      (** A list of SslCertificate resources that are used to authenticate
connections between users and the load balancer. At least one
SSL certificate must be specified. *)
  ssl_policy : string prop option; [@option]
      (** A reference to the SslPolicy resource that will be associated with
the TargetSslProxy resource. If not set, the TargetSslProxy
resource will not have any SSL policy configured. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_ssl_proxy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_ssl_proxy ?certificate_map ?description ?id
    ?project ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
    ~backend_service ~name () : google_compute_target_ssl_proxy =
  {
    backend_service;
    certificate_map;
    description;
    id;
    name;
    project;
    proxy_header;
    ssl_certificates;
    ssl_policy;
    timeouts;
  }

type t = {
  backend_service : string prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_header : string prop;
  proxy_id : float prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
}

let register ?tf_module ?certificate_map ?description ?id ?project
    ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
    ~backend_service ~name __resource_id =
  let __resource_type = "google_compute_target_ssl_proxy" in
  let __resource =
    google_compute_target_ssl_proxy ?certificate_map ?description ?id
      ?project ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
      ~backend_service ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_ssl_proxy __resource);
  let __resource_attributes =
    ({
       backend_service =
         Prop.computed __resource_type __resource_id
           "backend_service";
       certificate_map =
         Prop.computed __resource_type __resource_id
           "certificate_map";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       proxy_header =
         Prop.computed __resource_type __resource_id "proxy_header";
       proxy_id =
         Prop.computed __resource_type __resource_id "proxy_id";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       ssl_certificates =
         Prop.computed __resource_type __resource_id
           "ssl_certificates";
       ssl_policy =
         Prop.computed __resource_type __resource_id "ssl_policy";
     }
      : t)
  in
  __resource_attributes
