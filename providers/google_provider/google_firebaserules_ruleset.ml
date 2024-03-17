(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_firebaserules_ruleset__source__files = {
  content : string;  (** Textual Content. *)
  fingerprint : string option; [@option]
      (** Fingerprint (e.g. github sha) associated with the `File`. *)
  name : string;  (** File name. *)
}
[@@deriving yojson_of]
(** `File` set constituting the `Source` bundle. *)

type google_firebaserules_ruleset__source = {
  language : string option; [@option]
      (** `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS *)
  files : google_firebaserules_ruleset__source__files list;
}
[@@deriving yojson_of]
(** `Source` for the `Ruleset`. *)

type google_firebaserules_ruleset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_firebaserules_ruleset__timeouts *)

type google_firebaserules_ruleset__metadata = {
  services : string list;  (** services *)
}
[@@deriving yojson_of]

type google_firebaserules_ruleset = {
  source : google_firebaserules_ruleset__source list;
  timeouts : google_firebaserules_ruleset__timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_ruleset *)

let google_firebaserules_ruleset ?timeouts ~source __resource_id =
  let __resource_type = "google_firebaserules_ruleset" in
  let __resource = { source; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebaserules_ruleset __resource);
  ()
