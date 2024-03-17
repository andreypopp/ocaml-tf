(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_resource_manager_lien__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_resource_manager_lien__timeouts *)

type google_resource_manager_lien = {
  id : string prop option; [@option]  (** id *)
  origin : string prop;
      (** A stable, user-visible/meaningful string identifying the origin
of the Lien, intended to be inspected programmatically. Maximum length of
200 characters. *)
  parent : string prop;
      (** A reference to the resource this Lien is attached to.
The server will validate the parent against those for which Liens are supported.
Since a variety of objects can have Liens against them, you must provide the type
prefix (e.g. projects/my-project-name). *)
  reason : string prop;
      (** Concise user-visible strings indicating why an action cannot be performed
on a resource. Maximum length of 200 characters. *)
  restrictions : string prop list;
      (** The types of operations which should be blocked as a result of this Lien.
Each value should correspond to an IAM permission. The server will validate
the permissions against those for which Liens are supported.  An empty
list is meaningless and will be rejected.
e.g. ['resourcemanager.projects.delete'] *)
  timeouts : google_resource_manager_lien__timeouts option;
}
[@@deriving yojson_of]
(** google_resource_manager_lien *)

type t = {
  create_time : string prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  parent : string prop;
  reason : string prop;
  restrictions : string list prop;
}

let google_resource_manager_lien ?id ?timeouts ~origin ~parent
    ~reason ~restrictions __resource_id =
  let __resource_type = "google_resource_manager_lien" in
  let __resource =
    ({ id; origin; parent; reason; restrictions; timeouts }
      : google_resource_manager_lien)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_resource_manager_lien __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       origin = Prop.computed __resource_type __resource_id "origin";
       parent = Prop.computed __resource_type __resource_id "parent";
       reason = Prop.computed __resource_type __resource_id "reason";
       restrictions =
         Prop.computed __resource_type __resource_id "restrictions";
     }
      : t)
  in
  __resource_attributes
