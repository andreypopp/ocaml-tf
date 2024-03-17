(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_spaces_bucket_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_policy *)

let digitalocean_spaces_bucket_policy ?id ~bucket ~policy ~region
    __resource_id =
  let __resource_type = "digitalocean_spaces_bucket_policy" in
  let __resource = { bucket; id; policy; region } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket_policy __resource);
  ()
