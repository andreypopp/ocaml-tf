(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_resource_manager_lien__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_resource_manager_lien__timeouts *)

type google_resource_manager_lien = {
  id : string option; [@option]  (** id *)
  origin : string;
      (** A stable, user-visible/meaningful string identifying the origin
of the Lien, intended to be inspected programmatically. Maximum length of
200 characters. *)
  parent : string;
      (** A reference to the resource this Lien is attached to.
The server will validate the parent against those for which Liens are supported.
Since a variety of objects can have Liens against them, you must provide the type
prefix (e.g. projects/my-project-name). *)
  reason : string;
      (** Concise user-visible strings indicating why an action cannot be performed
on a resource. Maximum length of 200 characters. *)
  restrictions : string list;
      (** The types of operations which should be blocked as a result of this Lien.
Each value should correspond to an IAM permission. The server will validate
the permissions against those for which Liens are supported.  An empty
list is meaningless and will be rejected.
e.g. ['resourcemanager.projects.delete'] *)
  timeouts : google_resource_manager_lien__timeouts option;
}
[@@deriving yojson_of]
(** google_resource_manager_lien *)

let google_resource_manager_lien ?id ?timeouts ~origin ~parent
    ~reason ~restrictions __resource_id =
  let __resource_type = "google_resource_manager_lien" in
  let __resource =
    { id; origin; parent; reason; restrictions; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_resource_manager_lien __resource);
  ()
