(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_access_keys_configuration = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  key_rotation_interval_days : float prop option; [@option]
      (** Number of days to trigger a rotation of the keys. *)
}
[@@deriving yojson_of]
(** Access Keys Configuration defines the rotation policy for the keys
that access will use to sign data.
 *)

let cloudflare_access_keys_configuration ?id
    ?key_rotation_interval_days ~account_id __resource_id =
  let __resource_type = "cloudflare_access_keys_configuration" in
  let __resource = { account_id; id; key_rotation_interval_days } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_keys_configuration __resource);
  ()
