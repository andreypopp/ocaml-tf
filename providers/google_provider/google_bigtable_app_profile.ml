(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_bigtable_app_profile__single_cluster_routing = {
  allow_transactional_writes : bool prop option; [@option]
      (** If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
It is unsafe to send these requests to the same table/row/column in multiple clusters. *)
  cluster_id : string prop;
      (** The cluster to which read/write requests should be routed. *)
}
[@@deriving yojson_of]
(** Use a single-cluster routing policy. *)

type google_bigtable_app_profile__standard_isolation = {
  priority : string prop;
      (** The priority of requests sent using this app profile. Possible values: [PRIORITY_LOW, PRIORITY_MEDIUM, PRIORITY_HIGH] *)
}
[@@deriving yojson_of]
(** The standard options used for isolating this app profile's traffic from other use cases. *)

type google_bigtable_app_profile__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_bigtable_app_profile__timeouts *)

type google_bigtable_app_profile = {
  app_profile_id : string prop;
      (** The unique name of the app profile in the form '[_a-zA-Z0-9][-_.a-zA-Z0-9]*'. *)
  description : string prop option; [@option]
      (** Long form description of the use case for this app profile. *)
  id : string prop option; [@option]  (** id *)
  ignore_warnings : bool prop option; [@option]
      (** If true, ignore safety checks when deleting/updating the app profile. *)
  instance : string prop option; [@option]
      (** The name of the instance to create the app profile within. *)
  multi_cluster_routing_cluster_ids : string prop list option;
      [@option]
      (** The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible. *)
  multi_cluster_routing_use_any : bool prop option; [@option]
      (** If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
consistency to improve availability. *)
  project : string prop option; [@option]  (** project *)
  single_cluster_routing :
    google_bigtable_app_profile__single_cluster_routing list;
  standard_isolation :
    google_bigtable_app_profile__standard_isolation list;
  timeouts : google_bigtable_app_profile__timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_app_profile *)

let google_bigtable_app_profile ?description ?id ?ignore_warnings
    ?instance ?multi_cluster_routing_cluster_ids
    ?multi_cluster_routing_use_any ?project ?timeouts ~app_profile_id
    ~single_cluster_routing ~standard_isolation __resource_id =
  let __resource_type = "google_bigtable_app_profile" in
  let __resource =
    {
      app_profile_id;
      description;
      id;
      ignore_warnings;
      instance;
      multi_cluster_routing_cluster_ids;
      multi_cluster_routing_use_any;
      project;
      single_cluster_routing;
      standard_isolation;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_bigtable_app_profile __resource);
  ()
