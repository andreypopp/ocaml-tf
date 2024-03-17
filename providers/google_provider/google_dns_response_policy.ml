(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_response_policy__gke_clusters = {
  gke_cluster_name : string;
      (** The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
'projects/*/locations/*/clusters/*' *)
}
[@@deriving yojson_of]
(** The list of Google Kubernetes Engine clusters that can see this zone. *)

type google_dns_response_policy__networks = {
  network_url : string;
      (** The fully qualified URL of the VPC network to bind to.
This should be formatted like
'https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}' *)
}
[@@deriving yojson_of]
(** The list of network names specifying networks to which this policy is applied. *)

type google_dns_response_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dns_response_policy__timeouts *)

type google_dns_response_policy = {
  description : string option; [@option]
      (** The description of the response policy, such as 'My new response policy'. *)
  response_policy_name : string;
      (** The user assigned name for this Response Policy, such as 'myresponsepolicy'. *)
  gke_clusters : google_dns_response_policy__gke_clusters list;
  networks : google_dns_response_policy__networks list;
  timeouts : google_dns_response_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_dns_response_policy *)

let google_dns_response_policy ?description ?timeouts
    ~response_policy_name ~gke_clusters ~networks __resource_id =
  let __resource_type = "google_dns_response_policy" in
  let __resource =
    {
      description;
      response_policy_name;
      gke_clusters;
      networks;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_response_policy __resource);
  ()
