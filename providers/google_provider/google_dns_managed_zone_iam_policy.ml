(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_managed_zone_iam_policy = {
  id : string option; [@option]  (** id *)
  managed_zone : string;  (** managed_zone *)
  policy_data : string;  (** policy_data *)
  project : string option; [@option]  (** project *)
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_policy *)

let google_dns_managed_zone_iam_policy ?id ?project ~managed_zone
    ~policy_data __resource_id =
  let __resource_type = "google_dns_managed_zone_iam_policy" in
  let __resource = { id; managed_zone; policy_data; project } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_managed_zone_iam_policy __resource);
  ()
