(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_fusion_instance_iam_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_data : string prop;  (** policy_data *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** google_data_fusion_instance_iam_policy *)

let google_data_fusion_instance_iam_policy ?id ?project ?region ~name
    ~policy_data __resource_id =
  let __resource_type = "google_data_fusion_instance_iam_policy" in
  let __resource = { id; name; policy_data; project; region } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_fusion_instance_iam_policy __resource);
  ()
