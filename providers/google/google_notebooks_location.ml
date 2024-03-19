(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_notebooks_location = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Name of the Location resource. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_notebooks_location *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_notebooks_location ?id ?name ?project ?timeouts () :
    google_notebooks_location =
  { id; name; project; timeouts }

type t = {
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let register ?tf_module ?id ?name ?project ?timeouts __resource_id =
  let __resource_type = "google_notebooks_location" in
  let __resource =
    google_notebooks_location ?id ?name ?project ?timeouts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_location __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
