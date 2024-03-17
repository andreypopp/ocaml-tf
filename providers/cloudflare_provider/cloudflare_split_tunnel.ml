(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_split_tunnel__tunnels = {
  address : string option; [@option]
      (** The address for the tunnel. *)
  description : string option; [@option]
      (** A description for the tunnel. *)
  host : string option; [@option]
      (** The domain name for the tunnel. *)
}
[@@deriving yojson_of]
(** The value of the tunnel attributes. *)

type cloudflare_split_tunnel = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  mode : string;
      (** The mode of the split tunnel policy. Available values: `include`, `exclude`. *)
  policy_id : string option; [@option]
      (** The settings policy for which to configure this split tunnel policy. *)
  tunnels : cloudflare_split_tunnel__tunnels list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Split Tunnel resource. Split tunnels are used to either
include or exclude lists of routes from the WARP client's tunnel.
 *)

let cloudflare_split_tunnel ?policy_id ~account_id ~mode ~tunnels
    __resource_id =
  let __resource_type = "cloudflare_split_tunnel" in
  let __resource = { account_id; mode; policy_id; tunnels } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_split_tunnel __resource);
  ()
