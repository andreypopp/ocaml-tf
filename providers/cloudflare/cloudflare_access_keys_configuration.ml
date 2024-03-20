(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?key_rotation_interval_days ~account_id __id =
  let __type = "cloudflare_access_keys_configuration" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       key_rotation_interval_days =
         Prop.computed __type __id "key_rotation_interval_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_keys_configuration
        (cloudflare_access_keys_configuration ?id
           ?key_rotation_interval_days ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_rotation_interval_days ~account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_rotation_interval_days ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
