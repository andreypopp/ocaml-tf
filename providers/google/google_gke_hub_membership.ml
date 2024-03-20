(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authority = {
  issuer : string prop;
      (** A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' and // be a valid
with length <2000 characters. For example: 'https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster' (must be 'locations' rather than 'zones'). If the cluster is provisioned with Terraform, this is 'https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}'. *)
}
[@@deriving yojson_of]
(** Authority encodes how Google will recognize identities from this Membership.
See the workload identity documentation for more details:
https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity *)

type endpoint__gke_cluster = {
  resource_link : string prop;
      (** Self-link of the GCP resource for the GKE cluster.
For example: '//container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster'.
It can be at the most 1000 characters in length. If the cluster is provisioned with Terraform,
this can be '//container.googleapis.com/${google_container_cluster.my-cluster.id}' or
'google_container_cluster.my-cluster.id'. *)
}
[@@deriving yojson_of]
(** If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. *)

type endpoint = { gke_cluster : endpoint__gke_cluster list }
[@@deriving yojson_of]
(** If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_gke_hub_membership = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels to apply to this membership.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** Location of the membership.
The default value is 'global'. *)
  membership_id : string prop;
      (** The client-provided identifier of the membership. *)
  project : string prop option; [@option]  (** project *)
  authority : authority list;
  endpoint : endpoint list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_membership *)

let authority ~issuer () : authority = { issuer }

let endpoint__gke_cluster ~resource_link () : endpoint__gke_cluster =
  { resource_link }

let endpoint ~gke_cluster () : endpoint = { gke_cluster }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_membership ?id ?labels ?location ?project
    ?timeouts ~membership_id ~authority ~endpoint () :
    google_gke_hub_membership =
  {
    id;
    labels;
    location;
    membership_id;
    project;
    authority;
    endpoint;
    timeouts;
  }

type t = {
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?location ?project ?timeouts ~membership_id
    ~authority ~endpoint __id =
  let __type = "google_gke_hub_membership" in
  let __attrs =
    ({
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       membership_id = Prop.computed __type __id "membership_id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_membership
        (google_gke_hub_membership ?id ?labels ?location ?project
           ?timeouts ~membership_id ~authority ~endpoint ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?location ?project ?timeouts
    ~membership_id ~authority ~endpoint __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?location ?project ?timeouts ~membership_id
      ~authority ~endpoint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
