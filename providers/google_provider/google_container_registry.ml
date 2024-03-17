(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_container_registry = {
  id : string option; [@option]  (** id *)
  location : string option; [@option]
      (** The location of the registry. One of ASIA, EU, US or not specified. See the official documentation for more information on registry locations. *)
  project : string option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
}
[@@deriving yojson_of]
(** google_container_registry *)

let google_container_registry ?id ?location ?project __resource_id =
  let __resource_type = "google_container_registry" in
  let __resource = { id; location; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_container_registry __resource);
  ()
