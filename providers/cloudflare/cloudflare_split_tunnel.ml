(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tunnels = {
  address : string prop option; [@option]
      (** The address for the tunnel. *)
  description : string prop option; [@option]
      (** A description for the tunnel. *)
  host : string prop option; [@option]
      (** The domain name for the tunnel. *)
}
[@@deriving yojson_of]
(** The value of the tunnel attributes. *)

type cloudflare_split_tunnel = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;
      (** The mode of the split tunnel policy. Available values: `include`, `exclude`. *)
  policy_id : string prop option; [@option]
      (** The settings policy for which to configure this split tunnel policy. *)
  tunnels : tunnels list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Split Tunnel resource. Split tunnels are used to either
include or exclude lists of routes from the WARP client's tunnel.
 *)

let tunnels ?address ?description ?host () : tunnels =
  { address; description; host }

let cloudflare_split_tunnel ?id ?policy_id ~account_id ~mode ~tunnels
    () : cloudflare_split_tunnel =
  { account_id; id; mode; policy_id; tunnels }

type t = {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  policy_id : string prop;
}

let make ?id ?policy_id ~account_id ~mode ~tunnels __id =
  let __type = "cloudflare_split_tunnel" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_split_tunnel
        (cloudflare_split_tunnel ?id ?policy_id ~account_id ~mode
           ~tunnels ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_id ~account_id ~mode ~tunnels
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_id ~account_id ~mode ~tunnels __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
