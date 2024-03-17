(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_privateca_ca_pool_iam_member__condition = {
  description : string option; [@option]  (** description *)
  expression : string;  (** expression *)
  title : string;  (** title *)
}
[@@deriving yojson_of]
(** google_privateca_ca_pool_iam_member__condition *)

type google_privateca_ca_pool_iam_member = {
  ca_pool : string;  (** ca_pool *)
  member : string;  (** member *)
  role : string;  (** role *)
  condition : google_privateca_ca_pool_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_privateca_ca_pool_iam_member *)

let google_privateca_ca_pool_iam_member ~ca_pool ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_privateca_ca_pool_iam_member" in
  let __resource = { ca_pool; member; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_privateca_ca_pool_iam_member __resource);
  ()
