(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_account = {
  enforce_twofactor : bool prop option; [@option]
      (** Whether 2FA is enforced on the account. Defaults to `false`. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the account that is displayed in the Cloudflare dashboard. *)
  type_ : string prop option; [@option] [@key "type"]
      (** Account type. Available values: `enterprise`, `standard`. Defaults to `standard`. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Account resource. Account is the basic resource for
working with Cloudflare zones, teams and users.
 *)

let cloudflare_account ?enforce_twofactor ?id ?type_ ~name () :
    cloudflare_account =
  { enforce_twofactor; id; name; type_ }

type t = {
  enforce_twofactor : bool prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?enforce_twofactor ?id ?type_ ~name __id =
  let __type = "cloudflare_account" in
  let __attrs =
    ({
       enforce_twofactor =
         Prop.computed __type __id "enforce_twofactor";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_account
        (cloudflare_account ?enforce_twofactor ?id ?type_ ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enforce_twofactor ?id ?type_ ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enforce_twofactor ?id ?type_ ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
