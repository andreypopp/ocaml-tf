(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firebaserules_release__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_firebaserules_release__timeouts *)

type google_firebaserules_release = {
  name : string;
      (** Format: `projects/{project_id}/releases/{release_id}`\Firestore Rules Releases will **always** have the name 'cloud.firestore' *)
  ruleset_name : string;
      (** Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created. *)
  timeouts : google_firebaserules_release__timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_release *)

let google_firebaserules_release ?timeouts ~name ~ruleset_name
    __resource_id =
  let __resource_type = "google_firebaserules_release" in
  let __resource = { name; ruleset_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebaserules_release __resource);
  ()
