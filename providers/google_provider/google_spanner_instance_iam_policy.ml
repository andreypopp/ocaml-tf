(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_spanner_instance_iam_policy = {
  instance : string;  (** instance *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_spanner_instance_iam_policy *)

let google_spanner_instance_iam_policy ~instance ~policy_data
    __resource_id =
  let __resource_type = "google_spanner_instance_iam_policy" in
  let __resource = { instance; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_spanner_instance_iam_policy __resource);
  ()
