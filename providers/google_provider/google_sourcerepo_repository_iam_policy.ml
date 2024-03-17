(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sourcerepo_repository_iam_policy = {
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  repository : string prop;  (** repository *)
}
[@@deriving yojson_of]
(** google_sourcerepo_repository_iam_policy *)

let google_sourcerepo_repository_iam_policy ?id ?project ~policy_data
    ~repository __resource_id =
  let __resource_type = "google_sourcerepo_repository_iam_policy" in
  let __resource = { id; policy_data; project; repository } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sourcerepo_repository_iam_policy __resource);
  ()
