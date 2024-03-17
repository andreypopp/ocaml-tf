(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_r2_bucket = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  location : string prop option; [@option]
      (** The location hint of the R2 bucket. *)
  name : string prop;  (** The name of the R2 bucket. *)
}
[@@deriving yojson_of]
(** The [R2 Bucket](https://developers.cloudflare.com/r2/) resource allows you to manage Cloudflare R2 buckets.
 *)

type t = {
  account_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

let cloudflare_r2_bucket ?location ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_r2_bucket" in
  let __resource =
    ({ account_id; location; name } : cloudflare_r2_bucket)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_r2_bucket __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
