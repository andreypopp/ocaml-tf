(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_target_ssl_proxy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_target_ssl_proxy__timeouts *)

type google_compute_target_ssl_proxy = {
  backend_service : string;
      (** A reference to the BackendService resource. *)
  certificate_map : string option; [@option]
      (** A reference to the CertificateMap resource uri that identifies a certificate map
associated with the given target proxy. This field can only be set for global target proxies.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}'. *)
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
  proxy_header : string option; [@option]
      (** Specifies the type of proxy header to append before sending data to
the backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  ssl_certificates : string list option; [@option]
      (** A list of SslCertificate resources that are used to authenticate
connections between users and the load balancer. At least one
SSL certificate must be specified. *)
  ssl_policy : string option; [@option]
      (** A reference to the SslPolicy resource that will be associated with
the TargetSslProxy resource. If not set, the TargetSslProxy
resource will not have any SSL policy configured. *)
  timeouts : google_compute_target_ssl_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_ssl_proxy *)

let google_compute_target_ssl_proxy ?certificate_map ?description
    ?proxy_header ?ssl_certificates ?ssl_policy ?timeouts
    ~backend_service ~name __resource_id =
  let __resource_type = "google_compute_target_ssl_proxy" in
  let __resource =
    {
      backend_service;
      certificate_map;
      description;
      name;
      proxy_header;
      ssl_certificates;
      ssl_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_ssl_proxy __resource);
  ()
