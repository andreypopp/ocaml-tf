(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_logging_folder_settings__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_logging_folder_settings__timeouts *)

type google_logging_folder_settings = {
  folder : string;  (** The folder for which to retrieve settings. *)
  timeouts : google_logging_folder_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_logging_folder_settings *)

let google_logging_folder_settings ?timeouts ~folder __resource_id =
  let __resource_type = "google_logging_folder_settings" in
  let __resource = { folder; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_logging_folder_settings __resource);
  ()
