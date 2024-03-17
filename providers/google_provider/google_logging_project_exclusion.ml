(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_project_exclusion = {
  description : string prop option; [@option]
      (** A human-readable description. *)
  disabled : bool prop option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string prop;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging exclusion. *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_logging_project_exclusion *)

let google_logging_project_exclusion ?description ?disabled ?id
    ?project ~filter ~name __resource_id =
  let __resource_type = "google_logging_project_exclusion" in
  let __resource =
    { description; disabled; filter; id; name; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_project_exclusion __resource);
  ()
