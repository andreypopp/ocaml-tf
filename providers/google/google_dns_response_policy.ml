(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gke_clusters = {
  gke_cluster_name : string prop;
      (** The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
'projects/*/locations/*/clusters/*' *)
}
[@@deriving yojson_of]
(** The list of Google Kubernetes Engine clusters that can see this zone. *)

type networks = {
  network_url : string prop;
      (** The fully qualified URL of the VPC network to bind to.
This should be formatted like
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** The list of network names specifying networks to which this policy is applied. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dns_response_policy = {
  description : string prop option; [@option]
      (** The description of the response policy, such as 'My new response policy'. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  response_policy_name : string prop;
      (** The user assigned name for this Response Policy, such as 'myresponsepolicy'. *)
  gke_clusters : gke_clusters list;
  networks : networks list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dns_response_policy *)

let gke_clusters ~gke_cluster_name () : gke_clusters =
  { gke_cluster_name }

let networks ~network_url () : networks = { network_url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_response_policy ?description ?id ?project ?timeouts
    ~response_policy_name ~gke_clusters ~networks () :
    google_dns_response_policy =
  {
    description;
    id;
    project;
    response_policy_name;
    gke_clusters;
    networks;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  project : string prop;
  response_policy_name : string prop;
}

let make ?description ?id ?project ?timeouts ~response_policy_name
    ~gke_clusters ~networks __id =
  let __type = "google_dns_response_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       response_policy_name =
         Prop.computed __type __id "response_policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_response_policy
        (google_dns_response_policy ?description ?id ?project
           ?timeouts ~response_policy_name ~gke_clusters ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts
    ~response_policy_name ~gke_clusters ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~response_policy_name
      ~gke_clusters ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
