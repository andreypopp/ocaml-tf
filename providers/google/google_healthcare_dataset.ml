(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_healthcare_dataset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_healthcare_dataset__timeouts *)

type google_healthcare_dataset = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the Dataset. *)
  name : string prop;  (** The resource name for the Dataset. *)
  project : string prop option; [@option]  (** project *)
  time_zone : string prop option; [@option]
      (** The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
America/New_York or empty, which defaults to UTC. This is used for parsing times in resources
(e.g., HL7 messages) where no explicit timezone is specified. *)
  timeouts : google_healthcare_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dataset *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  time_zone : string prop;
}

let google_healthcare_dataset ?id ?project ?time_zone ?timeouts
    ~location ~name __resource_id =
  let __resource_type = "google_healthcare_dataset" in
  let __resource =
    ({ id; location; name; project; time_zone; timeouts }
      : google_healthcare_dataset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dataset __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
