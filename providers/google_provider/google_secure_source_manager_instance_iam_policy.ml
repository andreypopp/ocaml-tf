(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_secure_source_manager_instance_iam_policy = {
  instance_id : string;  (** instance_id *)
  policy_data : string;  (** policy_data *)
}
[@@deriving yojson_of]
(** google_secure_source_manager_instance_iam_policy *)

let google_secure_source_manager_instance_iam_policy ~instance_id
    ~policy_data __resource_id =
  let __resource_type =
    "google_secure_source_manager_instance_iam_policy"
  in
  let __resource = { instance_id; policy_data } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_secure_source_manager_instance_iam_policy
       __resource);
  ()
