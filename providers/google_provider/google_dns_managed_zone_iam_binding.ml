(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dns_managed_zone_iam_binding__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_binding__condition *)

type google_dns_managed_zone_iam_binding = {
  managed_zone : string;  (** managed_zone *)
  members : string list;  (** members *)
  role : string;  (** role *)
  condition : google_dns_managed_zone_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_dns_managed_zone_iam_binding *)

let google_dns_managed_zone_iam_binding ~managed_zone ~members ~role
    ~condition __resource_id =
  let __resource_type = "google_dns_managed_zone_iam_binding" in
  let __resource = { managed_zone; members; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_managed_zone_iam_binding __resource);
  ()
