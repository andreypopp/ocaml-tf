(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?enforce_twofactor ?id ?type_ ~name
    __resource_id =
  let __resource_type = "cloudflare_account" in
  let __resource =
    cloudflare_account ?enforce_twofactor ?id ?type_ ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_account __resource);
  let __resource_attributes =
    ({
       enforce_twofactor =
         Prop.computed __resource_type __resource_id
           "enforce_twofactor";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
