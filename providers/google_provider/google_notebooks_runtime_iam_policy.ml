(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_notebooks_runtime_iam_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  runtime_name : string prop;  (** runtime_name *)
}
[@@deriving yojson_of]
(** google_notebooks_runtime_iam_policy *)

let google_notebooks_runtime_iam_policy ?id ?location ?project
    ~policy_data ~runtime_name __resource_id =
  let __resource_type = "google_notebooks_runtime_iam_policy" in
  let __resource =
    { id; location; policy_data; project; runtime_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_notebooks_runtime_iam_policy __resource);
  ()
