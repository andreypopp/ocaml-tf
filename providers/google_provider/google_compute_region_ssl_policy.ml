(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_region_ssl_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_region_ssl_policy__timeouts *)

type google_compute_region_ssl_policy = {
  custom_features : string list option; [@option]
      (** A list of features enabled when the selected profile is CUSTOM. The
method returns the set of features that can be specified in this
list. This field must be empty if the profile is not CUSTOM.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for which ciphers are available to use. **Note**: this argument
*must* be present when using the 'CUSTOM' profile. This argument
*must not* be present when using any other profile. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  min_tls_version : string option; [@option]
      (** The minimum version of SSL protocol that can be used by the clients
to establish a connection with the load balancer. Default value: TLS_1_0 Possible values: [TLS_1_0, TLS_1_1, TLS_1_2] *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  profile : string option; [@option]
      (** Profile specifies the set of SSL features that can be used by the
load balancer when negotiating SSL with clients. If using 'CUSTOM',
the set of SSL features to enable must be specified in the
'customFeatures' field.

See the [official documentation](https://cloud.google.com/compute/docs/load-balancing/ssl-policies#profilefeaturesupport)
for information on what cipher suites each profile provides. If
'CUSTOM' is used, the 'custom_features' attribute **must be set**. Default value: COMPATIBLE Possible values: [COMPATIBLE, MODERN, RESTRICTED, CUSTOM] *)
  region : string;
      (** The region where the regional SSL policy resides. *)
  timeouts : google_compute_region_ssl_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_ssl_policy *)

let google_compute_region_ssl_policy ?custom_features ?description
    ?min_tls_version ?profile ?timeouts ~name ~region __resource_id =
  let __resource_type = "google_compute_region_ssl_policy" in
  let __resource =
    {
      custom_features;
      description;
      min_tls_version;
      name;
      profile;
      region;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_ssl_policy __resource);
  ()
