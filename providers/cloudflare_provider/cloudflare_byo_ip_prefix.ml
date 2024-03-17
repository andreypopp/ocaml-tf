(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_byo_ip_prefix = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  advertisement : string option; [@option]
      (** Whether or not the prefix shall be announced. A prefix can be activated or deactivated once every 15 minutes (attempting more regular updates will trigger rate limiting). Available values: `on`, `off`. *)
  description : string option; [@option]
      (** Description of the BYO IP prefix. *)
  id : string option; [@option]  (** id *)
  prefix_id : string;
      (** The assigned Bring-Your-Own-IP prefix ID. **Modifying this attribute will force creation of a new resource.** *)
}
[@@deriving yojson_of]
(** Provides the ability to manage Bring-Your-Own-IP prefixes (BYOIP)
which are used with or without Magic Transit.
 *)

let cloudflare_byo_ip_prefix ?advertisement ?description ?id
    ~account_id ~prefix_id __resource_id =
  let __resource_type = "cloudflare_byo_ip_prefix" in
  let __resource =
    { account_id; advertisement; description; id; prefix_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_byo_ip_prefix __resource);
  ()
