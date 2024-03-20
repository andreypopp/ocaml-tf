(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_ssl_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_ssl_policy ?custom_features ?description ?id
    ?min_tls_version ?profile ?project ?timeouts ~name () :
    google_compute_ssl_policy =
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
  self_link : string prop;
}

let make ?custom_features ?description ?id ?min_tls_version ?profile
    ?project ?timeouts ~name __id =
  let __type = "google_compute_ssl_policy" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       custom_features = Prop.computed __type __id "custom_features";
       description = Prop.computed __type __id "description";
       enabled_features =
         Prop.computed __type __id "enabled_features";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       min_tls_version = Prop.computed __type __id "min_tls_version";
       name = Prop.computed __type __id "name";
       profile = Prop.computed __type __id "profile";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ssl_policy
        (google_compute_ssl_policy ?custom_features ?description ?id
           ?min_tls_version ?profile ?project ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_features ?description ?id
    ?min_tls_version ?profile ?project ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?custom_features ?description ?id ?min_tls_version ?profile
      ?project ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
