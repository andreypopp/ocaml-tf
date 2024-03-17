(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_worker_secret = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
  script_name : string prop;
      (** The name of the Worker script to associate the secret with. **Modifying this attribute will force creation of a new resource.** *)
  secret_text : string prop;
      (** The text of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Worker secret resource. *)

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}

let cloudflare_worker_secret ?id ~account_id ~name ~script_name
    ~secret_text __resource_id =
  let __resource_type = "cloudflare_worker_secret" in
  let __resource =
    ({ account_id; id; name; script_name; secret_text }
      : cloudflare_worker_secret)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_secret __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       script_name =
         Prop.computed __resource_type __resource_id "script_name";
       secret_text =
         Prop.computed __resource_type __resource_id "secret_text";
     }
      : t)
  in
  __resource_attributes
