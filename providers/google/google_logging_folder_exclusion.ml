(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_logging_folder_exclusion = {
  description : string prop option; [@option]
      (** A human-readable description. *)
  disabled : bool prop option; [@option]
      (** Whether this exclusion rule should be disabled or not. This defaults to false. *)
  filter : string prop;
      (** The filter to apply when excluding logs. Only log entries that match the filter are excluded. *)
  folder : string prop;  (** folder *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the logging exclusion. *)
}
[@@deriving yojson_of]
(** google_logging_folder_exclusion *)

let google_logging_folder_exclusion ?description ?disabled ?id
    ~filter ~folder ~name () : google_logging_folder_exclusion =
  { description; disabled; filter; folder; id; name }

type t = {
  description : string prop;
  disabled : bool prop;
  filter : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?description ?disabled ?id ~filter ~folder
    ~name __resource_id =
  let __resource_type = "google_logging_folder_exclusion" in
  let __resource =
    google_logging_folder_exclusion ?description ?disabled ?id
      ~filter ~folder ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_folder_exclusion __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       disabled =
         Prop.computed __resource_type __resource_id "disabled";
       filter = Prop.computed __resource_type __resource_id "filter";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
