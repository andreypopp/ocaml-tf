(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type single_cluster_routing = {
  allow_transactional_writes : bool prop option; [@option]
      (** If true, CheckAndMutateRow and ReadModifyWriteRow requests are allowed by this app profile.
It is unsafe to send these requests to the same table/row/column in multiple clusters. *)
  cluster_id : string prop;
      (** The cluster to which read/write requests should be routed. *)
}
[@@deriving yojson_of]
(** Use a single-cluster routing policy. *)

type standard_isolation = {
  priority : string prop;
      (** The priority of requests sent using this app profile. Possible values: [PRIORITY_LOW, PRIORITY_MEDIUM, PRIORITY_HIGH] *)
}
[@@deriving yojson_of]
(** The standard options used for isolating this app profile's traffic from other use cases. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  single_cluster_routing : single_cluster_routing list;
  standard_isolation : standard_isolation list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_bigtable_app_profile *)

let single_cluster_routing ?allow_transactional_writes ~cluster_id ()
    : single_cluster_routing =
  { allow_transactional_writes; cluster_id }

let standard_isolation ~priority () : standard_isolation =
  { priority }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_bigtable_app_profile ?description ?id ?ignore_warnings
    ?instance ?multi_cluster_routing_cluster_ids
    ?multi_cluster_routing_use_any ?project ?timeouts ~app_profile_id
    ~single_cluster_routing ~standard_isolation () :
    google_bigtable_app_profile =
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

type t = {
  app_profile_id : string prop;
  description : string prop;
  id : string prop;
  ignore_warnings : bool prop;
  instance : string prop;
  multi_cluster_routing_cluster_ids : string list prop;
  multi_cluster_routing_use_any : bool prop;
  name : string prop;
  project : string prop;
}

let make ?description ?id ?ignore_warnings ?instance
    ?multi_cluster_routing_cluster_ids ?multi_cluster_routing_use_any
    ?project ?timeouts ~app_profile_id ~single_cluster_routing
    ~standard_isolation __id =
  let __type = "google_bigtable_app_profile" in
  let __attrs =
    ({
       app_profile_id = Prop.computed __type __id "app_profile_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ignore_warnings = Prop.computed __type __id "ignore_warnings";
       instance = Prop.computed __type __id "instance";
       multi_cluster_routing_cluster_ids =
         Prop.computed __type __id
           "multi_cluster_routing_cluster_ids";
       multi_cluster_routing_use_any =
         Prop.computed __type __id "multi_cluster_routing_use_any";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_app_profile
        (google_bigtable_app_profile ?description ?id
           ?ignore_warnings ?instance
           ?multi_cluster_routing_cluster_ids
           ?multi_cluster_routing_use_any ?project ?timeouts
           ~app_profile_id ~single_cluster_routing
           ~standard_isolation ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ignore_warnings ?instance
    ?multi_cluster_routing_cluster_ids ?multi_cluster_routing_use_any
    ?project ?timeouts ~app_profile_id ~single_cluster_routing
    ~standard_isolation __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ignore_warnings ?instance
      ?multi_cluster_routing_cluster_ids
      ?multi_cluster_routing_use_any ?project ?timeouts
      ~app_profile_id ~single_cluster_routing ~standard_isolation
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
