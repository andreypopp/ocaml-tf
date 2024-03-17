(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_byo_ip_prefix = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  advertisement : string prop option; [@option]
      (** Whether or not the prefix shall be announced. A prefix can be activated or deactivated once every 15 minutes (attempting more regular updates will trigger rate limiting). Available values: `on`, `off`. *)
  description : string prop option; [@option]
      (** Description of the BYO IP prefix. *)
  id : string prop option; [@option]  (** id *)
  prefix_id : string prop;
      (** The assigned Bring-Your-Own-IP prefix ID. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Bring-Your-Own-IP prefixes (BYOIP)
which are used with or without Magic Transit.
 *)

type t = {
  account_id : string prop;
  advertisement : string prop;
  description : string prop;
  id : string prop;
  prefix_id : string prop;
}

let cloudflare_byo_ip_prefix ?advertisement ?description ?id
    ~account_id ~prefix_id __resource_id =
  let __resource_type = "cloudflare_byo_ip_prefix" in
  let __resource =
    ({ account_id; advertisement; description; id; prefix_id }
      : cloudflare_byo_ip_prefix)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_byo_ip_prefix __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       advertisement =
         Prop.computed __resource_type __resource_id "advertisement";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       prefix_id =
         Prop.computed __resource_type __resource_id "prefix_id";
     }
      : t)
  in
  __resource_attributes
