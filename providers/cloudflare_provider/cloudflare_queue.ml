(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_queue = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  name : string;  (** The name of the queue. *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Cloudflare Workers Queue features. *)

let cloudflare_queue ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_queue" in
  let __resource = { account_id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_queue __resource);
  ()
