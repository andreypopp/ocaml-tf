(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_region_target_https_proxy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_target_https_proxy__timeouts *)

type google_compute_region_target_https_proxy = {
  certificate_manager_certificates : string list option; [@option]
      (** URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
Currently, you may specify up to 15 certificates. Certificate manager certificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
sslCertificates and certificateManagerCertificates fields can not be defined together.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}' or just the self_link 'projects/{project}/locations/{location}/certificates/{resourceName}' *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  ssl_certificates : string list option; [@option]
      (** URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED. *)
  ssl_policy : string option; [@option]
      (** A reference to the Region SslPolicy resource that will be associated with
the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
resource will not have any SSL policy configured. *)
  url_map : string;
      (** A reference to the RegionUrlMap resource that defines the mapping from URL
to the RegionBackendService. *)
  timeouts :
    google_compute_region_target_https_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_target_https_proxy *)

let google_compute_region_target_https_proxy
    ?certificate_manager_certificates ?description ?ssl_certificates
    ?ssl_policy ?timeouts ~name ~url_map __resource_id =
  let __resource_type = "google_compute_region_target_https_proxy" in
  let __resource =
    {
      certificate_manager_certificates;
      description;
      name;
      ssl_certificates;
      ssl_policy;
      url_map;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_target_https_proxy __resource);
  ()
