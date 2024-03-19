(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_d1_database = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  name : string prop;  (** The name of the D1 Database. *)
}
[@@deriving yojson_of]
(** The [D1 Database](https://developers.cloudflare.com/d1/) resource allows you to manage Cloudflare D1 databases.
 *)

let cloudflare_d1_database ~account_id ~name () :
    cloudflare_d1_database =
  { account_id; name }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}

let register ?tf_module ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_d1_database" in
  let __resource = cloudflare_d1_database ~account_id ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_d1_database __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
