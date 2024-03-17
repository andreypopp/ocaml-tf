(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_kms_key_ring_iam_binding__condition = {
  description : string prop option; [@option]  (** description *)
  expression : string prop;  (** expression *)
  title : string prop;  (** title *)
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_binding__condition *)

type google_kms_key_ring_iam_binding = {
  id : string prop option; [@option]  (** id *)
  key_ring_id : string prop;  (** key_ring_id *)
  members : string prop list;  (** members *)
  role : string prop;  (** role *)
  condition : google_kms_key_ring_iam_binding__condition list;
}
[@@deriving yojson_of]
(** google_kms_key_ring_iam_binding *)

let google_kms_key_ring_iam_binding ?id ~key_ring_id ~members ~role
    ~condition __resource_id =
  let __resource_type = "google_kms_key_ring_iam_binding" in
  let __resource = { id; key_ring_id; members; role; condition } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_kms_key_ring_iam_binding __resource);
  ()
