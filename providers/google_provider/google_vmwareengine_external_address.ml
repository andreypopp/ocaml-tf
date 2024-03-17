(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vmwareengine_external_address__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vmwareengine_external_address__timeouts *)

type google_vmwareengine_external_address = {
  description : string prop option; [@option]
      (** User-provided description for this resource. *)
  id : string prop option; [@option]  (** id *)
  internal_ip : string prop;
      (** The internal IP address of a workload VM. *)
  name : string prop;  (** The ID of the external IP Address. *)
  parent : string prop;
      (** The resource name of the private cloud to create a new external address in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud *)
  timeouts : google_vmwareengine_external_address__timeouts option;
}
[@@deriving yojson_of]
(** google_vmwareengine_external_address *)

type t = {
  create_time : string prop;
  description : string prop;
  external_ip : string prop;
  id : string prop;
  internal_ip : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let google_vmwareengine_external_address ?description ?id ?timeouts
    ~internal_ip ~name ~parent __resource_id =
  let __resource_type = "google_vmwareengine_external_address" in
  let __resource =
    ({ description; id; internal_ip; name; parent; timeouts }
      : google_vmwareengine_external_address)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vmwareengine_external_address __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       external_ip =
         Prop.computed __resource_type __resource_id "external_ip";
       id = Prop.computed __resource_type __resource_id "id";
       internal_ip =
         Prop.computed __resource_type __resource_id "internal_ip";
       name = Prop.computed __resource_type __resource_id "name";
       parent = Prop.computed __resource_type __resource_id "parent";
       state = Prop.computed __resource_type __resource_id "state";
       uid = Prop.computed __resource_type __resource_id "uid";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
