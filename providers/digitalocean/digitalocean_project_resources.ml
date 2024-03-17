(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_project_resources = {
  id : string prop option; [@option]  (** id *)
  project : string prop;  (** project ID *)
  resources : string prop list;
      (** the resources associated with the project *)
}
[@@deriving yojson_of]
(** digitalocean_project_resources *)

type t = {
  id : string prop;
  project : string prop;
  resources : string list prop;
}

let digitalocean_project_resources ?id ~project ~resources
    __resource_id =
  let __resource_type = "digitalocean_project_resources" in
  let __resource =
    ({ id; project; resources } : digitalocean_project_resources)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_project_resources __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       resources =
         Prop.computed __resource_type __resource_id "resources";
     }
      : t)
  in
  __resource_attributes
