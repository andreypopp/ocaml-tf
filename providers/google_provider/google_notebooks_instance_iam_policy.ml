(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_instance_iam_policy = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_notebooks_instance_iam_policy *)

let google_notebooks_instance_iam_policy ?id ?location ?project
    ~instance_name ~policy_data __resource_id =
  let __resource_type = "google_notebooks_instance_iam_policy" in
  let __resource =
    { id; instance_name; location; policy_data; project }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_instance_iam_policy __resource);
  ()
