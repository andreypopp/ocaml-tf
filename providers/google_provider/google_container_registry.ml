(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_registry = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the registry. One of ASIA, EU, US or not specified. See the official documentation for more information on registry locations. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
}
[@@deriving yojson_of]
(** google_container_registry *)

type t = {
  bucket_self_link : string prop;
  id : string prop;
  location : string prop;
  project : string prop;
}

let google_container_registry ?id ?location ?project __resource_id =
  let __resource_type = "google_container_registry" in
  let __resource =
    ({ id; location; project } : google_container_registry)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_registry __resource);
  let __resource_attributes =
    ({
       bucket_self_link =
         Prop.computed __resource_type __resource_id
           "bucket_self_link";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
