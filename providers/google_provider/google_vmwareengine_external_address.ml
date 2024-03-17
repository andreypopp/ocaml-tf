(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_external_address__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_external_address__timeouts *)

type google_vmwareengine_external_address = {
  description : string option; [@option]
      (** User-provided description for this resource. *)
  id : string option; [@option]  (** id *)
  internal_ip : string;
      (** The internal IP address of a workload VM. *)
  name : string;  (** The ID of the external IP Address. *)
  parent : string;
      (** The resource name of the private cloud to create a new external address in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  timeouts : google_vmwareengine_external_address__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_external_address *)

let google_vmwareengine_external_address ?description ?id ?timeouts
    ~internal_ip ~name ~parent __resource_id =
  let __resource_type = "google_vmwareengine_external_address" in
  let __resource =
    { description; id; internal_ip; name; parent; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_external_address __resource);
  ()
