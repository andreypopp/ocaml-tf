(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_queue = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** The name of the queue. *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Cloudflare Workers Queue features. *)

let cloudflare_queue ?id ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_queue" in
  let __resource = { account_id; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_queue __resource);
  ()
