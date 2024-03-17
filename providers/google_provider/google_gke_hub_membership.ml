(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_gke_hub_membership__authority = {
  issuer : string prop;
      (** A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' and // be a valid
with length <2000 characters. For example: 'https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster' (must be 'locations' rather than 'zones'). If the cluster is provisioned with Terraform, this is 'https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}'. *)
}
[@@deriving yojson_of]
(** Authority encodes how Google will recognize identities from this Membership.
See the workload identity documentation for more details:
https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity *)

type google_gke_hub_membership__endpoint__gke_cluster = {
  resource_link : string prop;
      (** Self-link of the GCP resource for the GKE cluster.
For example: '//container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster'.
It can be at the most 1000 characters in length. If the cluster is provisioned with Terraform,
this can be '//container.googleapis.com/${google_container_cluster.my-cluster.id}' or
'google_container_cluster.my-cluster.id'. *)
}
[@@deriving yojson_of]
(** If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. *)

type google_gke_hub_membership__endpoint = {
  gke_cluster : google_gke_hub_membership__endpoint__gke_cluster list;
}
[@@deriving yojson_of]
(** If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. *)

type google_gke_hub_membership__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_gke_hub_membership__timeouts *)

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
  authority : google_gke_hub_membership__authority list;
  endpoint : google_gke_hub_membership__endpoint list;
  timeouts : google_gke_hub_membership__timeouts option;
}
[@@deriving yojson_of]
(** google_gke_hub_membership *)

let google_gke_hub_membership ?id ?labels ?location ?project
    ?timeouts ~membership_id ~authority ~endpoint __resource_id =
  let __resource_type = "google_gke_hub_membership" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_gke_hub_membership __resource);
  ()
