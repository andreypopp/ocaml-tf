(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloudfunctions_function_iam_policy = {
  cloud_function : string prop;  (** cloud_function *)
  id : string prop option; [@option]  (** id *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_cloudfunctions_function_iam_policy *)

let google_cloudfunctions_function_iam_policy ?id ?project ?region
    ~cloud_function ~policy_data __resource_id =
  let __resource_type =
    "google_cloudfunctions_function_iam_policy"
  in
  let __resource =
    { cloud_function; id; policy_data; project; region }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloudfunctions_function_iam_policy __resource);
  ()
