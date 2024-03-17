(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_target_https_proxy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_target_https_proxy__timeouts *)

type google_compute_target_https_proxy = {
  certificate_manager_certificates : string prop list option;
      [@option]
      (** URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
Currently, you may specify up to 15 certificates. Certificate manager certificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
sslCertificates and certificateManagerCertificates fields can not be defined together.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}' or just the self_link 'projects/{project}/locations/{location}/certificates/{resourceName}' *)
  certificate_map : string prop option; [@option]
      (** A reference to the CertificateMap resource uri that identifies a certificate map
associated with the given target proxy. This field can only be set for global target proxies.
Accepted format is '//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}'. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  http_keep_alive_timeout_sec : float prop option; [@option]
      (** Specifies how long to keep a connection open, after completing a response,
while there is no matching traffic (in seconds). If an HTTP keepalive is
not specified, a default value (610 seconds) will be used. For Global
external HTTP(S) load balancer, the minimum allowed value is 5 seconds and
the maximum allowed value is 1200 seconds. For Global external HTTP(S)
load balancer (classic), this option is not available publicly. *)
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
  proxy_bind : bool prop option; [@option]
      (** This field only applies when the forwarding rule that references
this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. *)
  quic_override : string prop option; [@option]
      (** Specifies the QUIC override policy for this resource. This determines
whether the load balancer will attempt to negotiate QUIC with clients
or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is
specified, Google manages whether QUIC is used. Default value: NONE Possible values: [NONE, ENABLE, DISABLE] *)
  server_tls_policy : string prop option; [@option]
      (** A URL referring to a networksecurity.ServerTlsPolicy
resource that describes how the proxy should authenticate inbound
traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
attached to globalForwardingRules with the loadBalancingScheme
set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
For details which ServerTlsPolicy resources are accepted with
INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
loadBalancingScheme consult ServerTlsPolicy documentation.
If left blank, communications are not encrypted. *)
  ssl_certificates : string prop list option; [@option]
      (** URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
sslCertificates and certificateManagerCertificates can not be defined together. *)
  ssl_policy : string prop option; [@option]
      (** A reference to the SslPolicy resource that will be associated with
the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
resource will not have any SSL policy configured. *)
  url_map : string prop;
      (** A reference to the UrlMap resource that defines the mapping from URL
to the BackendService. *)
  timeouts : google_compute_target_https_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_https_proxy *)

type t = {
  certificate_manager_certificates : string list prop;
  certificate_map : string prop;
  creation_timestamp : string prop;
  description : string prop;
  http_keep_alive_timeout_sec : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_id : float prop;
  quic_override : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  ssl_certificates : string list prop;
  ssl_policy : string prop;
  url_map : string prop;
}

let google_compute_target_https_proxy
    ?certificate_manager_certificates ?certificate_map ?description
    ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind
    ?quic_override ?server_tls_policy ?ssl_certificates ?ssl_policy
    ?timeouts ~name ~url_map __resource_id =
  let __resource_type = "google_compute_target_https_proxy" in
  let __resource =
    ({
       certificate_manager_certificates;
       certificate_map;
       description;
       http_keep_alive_timeout_sec;
       id;
       name;
       project;
       proxy_bind;
       quic_override;
       server_tls_policy;
       ssl_certificates;
       ssl_policy;
       url_map;
       timeouts;
     }
      : google_compute_target_https_proxy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_https_proxy __resource);
  let __resource_attributes =
    ({
       certificate_manager_certificates =
         Prop.computed __resource_type __resource_id
           "certificate_manager_certificates";
       certificate_map =
         Prop.computed __resource_type __resource_id
           "certificate_map";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       http_keep_alive_timeout_sec =
         Prop.computed __resource_type __resource_id
           "http_keep_alive_timeout_sec";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       proxy_bind =
         Prop.computed __resource_type __resource_id "proxy_bind";
       proxy_id =
         Prop.computed __resource_type __resource_id "proxy_id";
       quic_override =
         Prop.computed __resource_type __resource_id "quic_override";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       server_tls_policy =
         Prop.computed __resource_type __resource_id
           "server_tls_policy";
       ssl_certificates =
         Prop.computed __resource_type __resource_id
           "ssl_certificates";
       ssl_policy =
         Prop.computed __resource_type __resource_id "ssl_policy";
       url_map =
         Prop.computed __resource_type __resource_id "url_map";
     }
      : t)
  in
  __resource_attributes
