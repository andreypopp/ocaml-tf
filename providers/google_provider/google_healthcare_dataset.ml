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
  location : string;  (** The location for the Dataset. *)
  name : string;  (** The resource name for the Dataset. *)
  timeouts : google_healthcare_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_healthcare_dataset *)

let google_healthcare_dataset ?timeouts ~location ~name __resource_id
    =
  let __resource_type = "google_healthcare_dataset" in
  let __resource = { location; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_healthcare_dataset __resource);
  ()
