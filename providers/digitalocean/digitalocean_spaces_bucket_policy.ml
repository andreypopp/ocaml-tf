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

let digitalocean_spaces_bucket_policy ?id ~bucket ~policy ~region ()
    : digitalocean_spaces_bucket_policy =
  { bucket; id; policy; region }

type t = {
  bucket : string prop;
  id : string prop;
  policy : string prop;
  region : string prop;
}

let register ?tf_module ?id ~bucket ~policy ~region __resource_id =
  let __resource_type = "digitalocean_spaces_bucket_policy" in
  let __resource =
    digitalocean_spaces_bucket_policy ?id ~bucket ~policy ~region ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket_policy __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes
