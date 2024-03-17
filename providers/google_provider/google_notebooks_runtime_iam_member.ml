(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_runtime_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_member__condition *)

type google_notebooks_runtime_iam_member = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  member : string prop;  (** member *)
  project : string prop option; [@option]  (** project *)
  role : string prop;  (** role *)
  runtime_name : string prop;  (** runtime_name *)
  condition : google_notebooks_runtime_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_member *)

let google_notebooks_runtime_iam_member ?id ?location ?project
    ~member ~role ~runtime_name ~condition __resource_id =
  let __resource_type = "google_notebooks_runtime_iam_member" in
  let __resource =
    { id; location; member; project; role; runtime_name; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_runtime_iam_member __resource);
  ()
