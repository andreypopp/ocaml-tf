(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_instance_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_notebooks_instance_iam_member__condition *)

type google_notebooks_instance_iam_member = {
  id : string option; [@option]  (** id *)
  instance_name : string;  (** instance_name *)
  location : string option; [@option]  (** location *)
  member : string;  (** member *)
  project : string option; [@option]  (** project *)
  role : string;  (** role *)
  condition : google_notebooks_instance_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_notebooks_instance_iam_member *)

let google_notebooks_instance_iam_member ?id ?location ?project
    ~instance_name ~member ~role ~condition __resource_id =
  let __resource_type = "google_notebooks_instance_iam_member" in
  let __resource =
    { id; instance_name; location; member; project; role; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_instance_iam_member __resource);
  ()
