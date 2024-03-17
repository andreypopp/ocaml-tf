(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_r2_bucket = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  location : string option; [@option]
      (** The location hint of the R2 bucket. *)
  name : string;  (** The name of the R2 bucket. *)
}
[@@deriving yojson_of]
(** The [R2 Bucket](https://developers.cloudflare.com/r2/) resource allows you to manage Cloudflare R2 buckets.
 *)

let cloudflare_r2_bucket ?location ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_r2_bucket" in
  let __resource = { account_id; location; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_r2_bucket __resource);
  ()
