(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_folder__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_folder__timeouts *)

type google_folder = {
  display_name : string;
      (** The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. *)
  parent : string;
      (** The resource name of the parent Folder or Organization. Must be of the form folders/{folder_id} or organizations/{org_id}. *)
  timeouts : google_folder__timeouts option;
}
[@@deriving yojson_of]
(** google_folder *)

let google_folder ?timeouts ~display_name ~parent __resource_id =
  let __resource_type = "google_folder" in
  let __resource = { display_name; parent; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_folder __resource);
  ()