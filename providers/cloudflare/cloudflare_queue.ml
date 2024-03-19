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

let cloudflare_queue ?id ~account_id ~name () : cloudflare_queue =
  { account_id; id; name }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ~account_id ~name __resource_id =
  let __resource_type = "cloudflare_queue" in
  let __resource = cloudflare_queue ?id ~account_id ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_queue __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
