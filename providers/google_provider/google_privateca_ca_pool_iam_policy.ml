(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_ca_pool_iam_policy = {
  ca_pool : string;  (** ca_pool *)
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_privateca_ca_pool_iam_policy *)

let google_privateca_ca_pool_iam_policy ?id ?location ?project
    ~ca_pool ~policy_data __resource_id =
  let __resource_type = "google_privateca_ca_pool_iam_policy" in
  let __resource = { ca_pool; id; location; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_ca_pool_iam_policy __resource);
  ()
