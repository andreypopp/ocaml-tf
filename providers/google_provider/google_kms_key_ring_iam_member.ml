(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_key_ring_iam_member__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_member__condition *)

type google_kms_key_ring_iam_member = {
  id : string prop option; [@option]  (** id *)
  key_ring_id : string prop;  (** key_ring_id *)
  member : string prop;  (** member *)
  role : string prop;  (** role *)
  condition : google_kms_key_ring_iam_member__condition list;
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_member *)

let google_kms_key_ring_iam_member ?id ~key_ring_id ~member ~role
    ~condition __resource_id =
  let __resource_type = "google_kms_key_ring_iam_member" in
  let __resource = { id; key_ring_id; member; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_iam_member __resource);
  ()
