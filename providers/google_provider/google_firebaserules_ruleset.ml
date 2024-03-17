(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_firebaserules_ruleset__source__files = {
  content : string prop;  (** Textual Content. *)
  fingerprint : string prop option; [@option]
      (** Fingerprint (e.g. github sha) associated with the `File`. *)
  name : string prop;  (** File name. *)
}
[@@deriving yojson_of]
(** `File` set constituting the `Source` bundle. *)

type google_firebaserules_ruleset__source = {
  language : string prop option; [@option]
      (** `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS *)
  files : google_firebaserules_ruleset__source__files list;
}
[@@deriving yojson_of]
(** `Source` for the `Ruleset`. *)

type google_firebaserules_ruleset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_firebaserules_ruleset__timeouts *)

type google_firebaserules_ruleset__metadata = {
  services : string prop list;  (** services *)
}
[@@deriving yojson_of]

type google_firebaserules_ruleset = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]
      (** The project for the resource *)
  source : google_firebaserules_ruleset__source list;
  timeouts : google_firebaserules_ruleset__timeouts option;
}
[@@deriving yojson_of]
(** google_firebaserules_ruleset *)

type t = {
  create_time : string prop;
  id : string prop;
  metadata : google_firebaserules_ruleset__metadata list prop;
  name : string prop;
  project : string prop;
}

let google_firebaserules_ruleset ?id ?project ?timeouts ~source
    __resource_id =
  let __resource_type = "google_firebaserules_ruleset" in
  let __resource =
    ({ id; project; source; timeouts }
      : google_firebaserules_ruleset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_firebaserules_ruleset __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
     }
      : t)
  in
  __resource_attributes
