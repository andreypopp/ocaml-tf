(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_shared_vpc_host_project = {
  id : string prop option; [@option]  (** id *)
  project : string prop;
      (** The ID of the project that will serve as a Shared VPC host project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_shared_vpc_host_project *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_shared_vpc_host_project ?id ?timeouts ~project ()
    : google_compute_shared_vpc_host_project =
  { id; project; timeouts }

type t = { id : string prop; project : string prop }

let register ?tf_module ?id ?timeouts ~project __resource_id =
  let __resource_type = "google_compute_shared_vpc_host_project" in
  let __resource =
    google_compute_shared_vpc_host_project ?id ?timeouts ~project ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_shared_vpc_host_project __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
