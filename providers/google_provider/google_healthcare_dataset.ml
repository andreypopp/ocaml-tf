(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_dataset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_healthcare_dataset__timeouts *)

type google_healthcare_dataset = {
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the Dataset. *)
  name : string;  (** The resource name for the Dataset. *)
  project : string option; [@option]  (** project *)
  time_zone : string option; [@option]
      (** The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
America/New_York or empty, which defaults to UTC. This is used for parsing times in resources
(e.g., HL7 messages) where no explicit timezone is specified. *)
  timeouts : google_healthcare_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dataset *)

let google_healthcare_dataset ?id ?project ?time_zone ?timeouts
    ~location ~name __resource_id =
  let __resource_type = "google_healthcare_dataset" in
  let __resource =
    { id; location; name; project; time_zone; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dataset __resource);
  ()
