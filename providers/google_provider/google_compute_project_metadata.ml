(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_project_metadata__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_project_metadata__timeouts *)

type google_compute_project_metadata = {
  metadata : (string * string) list;
      (** A series of key value pairs. *)
  timeouts : google_compute_project_metadata__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_project_metadata *)

let google_compute_project_metadata ?timeouts ~metadata __resource_id
    =
  let __resource_type = "google_compute_project_metadata" in
  let __resource = { metadata; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_project_metadata __resource);
  ()