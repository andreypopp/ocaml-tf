(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_iap_tunnel_instance_iam_policy = {
  id : string option; [@option]  (** id *)
  instance : string;  (** instance *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
  zone : string option; [@option]  (** zone *)
}
[@@deriving yojson_of]
(** google_iap_tunnel_instance_iam_policy *)

let google_iap_tunnel_instance_iam_policy ?id ?project ?zone
    ~instance ~policy_data __resource_id =
  let __resource_type = "google_iap_tunnel_instance_iam_policy" in
  let __resource = { id; instance; policy_data; project; zone } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_iap_tunnel_instance_iam_policy __resource);
  ()
