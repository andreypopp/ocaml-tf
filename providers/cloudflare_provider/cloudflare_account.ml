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

let cloudflare_account ?enforce_twofactor ?id ?type_ ~name
    __resource_id =
  let __resource_type = "cloudflare_account" in
  let __resource = { enforce_twofactor; id; name; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_account __resource);
  ()
