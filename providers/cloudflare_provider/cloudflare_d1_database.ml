(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_d1_database = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  name : string;  (** The name of the D1 Database. *)
}
[@@deriving yojson_of]
(** The [D1 Database](https://developers.cloudflare.com/d1/) resource allows you to manage Cloudflare D1 databases.
 *)

let cloudflare_d1_database ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_d1_database" in
  let __resource = { account_id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_d1_database __resource);
  ()
