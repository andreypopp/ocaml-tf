(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_ssl_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_ssl_policy__timeouts *)

type google_compute_ssl_policy = {
  custom_features : string prop list option; [@option]
      (** Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. This can be one of
'COMPATIBLE', 'MODERN', 'RESTRICTED', or 'CUSTOM'. If using 'CUSTOM',
the set of SSL features to enable must be specified in the
'customFeatures' field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for which ciphers are available to use. **Note**: this argument
*must* be present when using the 'CUSTOM' profile. This argument
*must not* be present when using any other profile. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  min_tls_version : string prop option; [@option]
      (** The minimum version of SSL protocol that can be used by the clients
to establish a connection with the load balancer. Default value: TLS_1_0 Possible values: [TLS_1_0, TLS_1_1, TLS_1_2] *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  profile : string prop option; [@option]
      (** Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. If using 'CUSTOM',
the set of SSL features to enable must be specified in the
'customFeatures' field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for information on what cipher suites each profile provides. If
'CUSTOM' is used, the 'custom_features' attribute **must be set**. Default value: COMPATIBLE Possible values: [COMPATIBLE, MODERN, RESTRICTED, CUSTOM] *)
  project : string prop option; [@option]  (** project *)
  timeouts : google_compute_ssl_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_ssl_policy *)

let google_compute_ssl_policy ?custom_features ?description ?id
    ?min_tls_version ?profile ?project ?timeouts ~name __resource_id
    =
  let __resource_type = "google_compute_ssl_policy" in
  let __resource =
    {
      custom_features;
      description;
      id;
      min_tls_version;
      name;
      profile;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_ssl_policy __resource);
  ()
