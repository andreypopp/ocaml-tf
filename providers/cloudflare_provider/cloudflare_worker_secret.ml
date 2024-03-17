(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_worker_secret = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  name : string;
      (** The name of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
  script_name : string;
      (** The name of the Worker script to associate the secret with. **Modifying this attribute will force creation of a new resource.** *)
  secret_text : string;
      (** The text of the Worker secret. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Worker secret resource. *)

let cloudflare_worker_secret ~account_id ~name ~script_name
    ~secret_text __resource_id =
  let __resource_type = "cloudflare_worker_secret" in
  let __resource = { account_id; name; script_name; secret_text } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_worker_secret __resource);
  ()
