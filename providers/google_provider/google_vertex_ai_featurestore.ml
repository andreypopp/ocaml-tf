(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vertex_ai_featurestore__encryption_spec = {
  kms_key_name : string;
      (** The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created. *)
}
[@@deriving yojson_of]
(** If set, both of the online and offline data storage will be secured by this key. *)

type google_vertex_ai_featurestore__online_serving_config__scaling = {
  max_node_count : float;
      (** The maximum number of nodes to scale up to. Must be greater than minNodeCount, and less than or equal to 10 times of 'minNodeCount'. *)
  min_node_count : float;
      (** The minimum number of nodes to scale down to. Must be greater than or equal to 1. *)
}
[@@deriving yojson_of]
(** Online serving scaling configuration. Only one of fixedNodeCount and scaling can be set. Setting one will reset the other. *)

type google_vertex_ai_featurestore__online_serving_config = {
  fixed_node_count : float option; [@option]
      (** The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating. *)
  scaling :
    google_vertex_ai_featurestore__online_serving_config__scaling
    list;
}
[@@deriving yojson_of]
(** Config for online serving resources. *)

type google_vertex_ai_featurestore__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore__timeouts *)

type google_vertex_ai_featurestore = {
  force_destroy : bool option; [@option]
      (** If set to true, any EntityTypes and Features for this Featurestore will also be deleted *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this Featurestore.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string option; [@option]
      (** The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. *)
  encryption_spec :
    google_vertex_ai_featurestore__encryption_spec list;
  online_serving_config :
    google_vertex_ai_featurestore__online_serving_config list;
  timeouts : google_vertex_ai_featurestore__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_featurestore *)

let google_vertex_ai_featurestore ?force_destroy ?labels ?name
    ?timeouts ~encryption_spec ~online_serving_config __resource_id =
  let __resource_type = "google_vertex_ai_featurestore" in
  let __resource =
    {
      force_destroy;
      labels;
      name;
      encryption_spec;
      online_serving_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_featurestore __resource);
  ()