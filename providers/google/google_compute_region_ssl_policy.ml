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

type google_compute_region_ssl_policy = {
  custom_features : string prop list option; [@option]
      (** A list of features enabled when the selected profile is CUSTOM. The
method returns the set of features that can be specified in this
list. This field must be empty if the profile is not CUSTOM.

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
  region : string prop;
      (** The region where the regional SSL policy resides. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_ssl_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_ssl_policy ?custom_features ?description
    ?id ?min_tls_version ?profile ?project ?timeouts ~name ~region ()
    : google_compute_region_ssl_policy =
  {
    custom_features;
    description;
    id;
    min_tls_version;
    name;
    profile;
    project;
    region;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  custom_features : string list prop;
  description : string prop;
  enabled_features : string list prop;
  fingerprint : string prop;
  id : string prop;
  min_tls_version : string prop;
  name : string prop;
  profile : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let register ?tf_module ?custom_features ?description ?id
    ?min_tls_version ?profile ?project ?timeouts ~name ~region
    __resource_id =
  let __resource_type = "google_compute_region_ssl_policy" in
  let __resource =
    google_compute_region_ssl_policy ?custom_features ?description
      ?id ?min_tls_version ?profile ?project ?timeouts ~name ~region
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_ssl_policy __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       custom_features =
         Prop.computed __resource_type __resource_id
           "custom_features";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled_features =
         Prop.computed __resource_type __resource_id
           "enabled_features";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       min_tls_version =
         Prop.computed __resource_type __resource_id
           "min_tls_version";
       name = Prop.computed __resource_type __resource_id "name";
       profile =
         Prop.computed __resource_type __resource_id "profile";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
