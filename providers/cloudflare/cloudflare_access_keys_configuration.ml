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
    ?key_rotation_interval_days ~account_id () :
    cloudflare_access_keys_configuration =
  { account_id; id; key_rotation_interval_days }

type t = {
  account_id : string prop;
  id : string prop;
  key_rotation_interval_days : float prop;
}

let register ?tf_module ?id ?key_rotation_interval_days ~account_id
    __resource_id =
  let __resource_type = "cloudflare_access_keys_configuration" in
  let __resource =
    cloudflare_access_keys_configuration ?id
      ?key_rotation_interval_days ~account_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_access_keys_configuration __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_rotation_interval_days =
         Prop.computed __resource_type __resource_id
           "key_rotation_interval_days";
     }
      : t)
  in
  __resource_attributes
