(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_target_https_proxy = {
  certificate_manager_certificates : string prop list option;
      [@option]
      (** URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
Currently, you may specify up to 15 certificates. Certificate manager certificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
sslCertificates and certificateManagerCertificates fields can not be defined together.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}' or just the self_link 'projects/{project}/locations/{location}/certificates/{resourceName}' *)
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
  region : string prop option; [@option]
      (** The Region in which the created target https proxy should reside.
If it is not provided, the provider region is used. *)
  ssl_certificates : string prop list option; [@option]
      (** URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED. *)
  ssl_policy : string prop option; [@option]
      (** A reference to the Region SslPolicy resource that will be associated with
the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
resource will not have any SSL policy configured. *)
  url_map : string prop;
      (** A reference to the RegionUrlMap resource that defines the mapping from URL
to the RegionBackendService. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_target_https_proxy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_target_https_proxy
    ?certificate_manager_certificates ?description ?id ?project
    ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map ()
    : google_compute_region_target_https_proxy =
  {
    certificate_manager_certificates;
    description;
    id;
    name;
    project;
    region;
    ssl_certificates;
    ssl_policy;
    url_map;
    timeouts;
  }

type t = {
  certificate_manager_certificates : string list prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
  url_map : string prop;
}

let make ?certificate_manager_certificates ?description ?id ?project
    ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map
    __id =
  let __type = "google_compute_region_target_https_proxy" in
  let __attrs =
    ({
       certificate_manager_certificates =
         Prop.computed __type __id "certificate_manager_certificates";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_id = Prop.computed __type __id "proxy_id";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       ssl_certificates =
         Prop.computed __type __id "ssl_certificates";
       ssl_policy = Prop.computed __type __id "ssl_policy";
       url_map = Prop.computed __type __id "url_map";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_target_https_proxy
        (google_compute_region_target_https_proxy
           ?certificate_manager_certificates ?description ?id
           ?project ?region ?ssl_certificates ?ssl_policy ?timeouts
           ~name ~url_map ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_manager_certificates
    ?description ?id ?project ?region ?ssl_certificates ?ssl_policy
    ?timeouts ~name ~url_map __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_manager_certificates ?description ?id ?project
      ?region ?ssl_certificates ?ssl_policy ?timeouts ~name ~url_map
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
