(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ips = { ip : string prop  (** An IPv4 or IPv6 address. *) }
[@@deriving yojson_of]
(** The set of IPs on the Address Map. *)

type memberships = {
  identifier : string prop;
      (** Identifier of the account or zone. *)
  kind : string prop;  (** The type of the membership. *)
}
[@@deriving yojson_of]
(** Zones and Accounts which will be assigned IPs on this Address Map. *)

type cloudflare_address_map = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  default_sni : string prop option; [@option]
      (** If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. *)
  description : string prop option; [@option]
      (** Description of the address map. *)
  enabled : bool prop;
      (** Whether the Address Map is enabled or not. *)
  id : string prop option; [@option]  (** id *)
  ips : ips list;
  memberships : memberships list;
}
[@@deriving yojson_of]
(** Provides the ability to manage IP addresses that can be used by DNS records when
they are proxied through Cloudflare.
 *)

let ips ~ip () : ips = { ip }

let memberships ~identifier ~kind () : memberships =
  { identifier; kind }

let cloudflare_address_map ?default_sni ?description ?id ~account_id
    ~enabled ~ips ~memberships () : cloudflare_address_map =
  {
    account_id;
    default_sni;
    description;
    enabled;
    id;
    ips;
    memberships;
  }

type t = {
  account_id : string prop;
  can_delete : bool prop;
  can_modify_ips : bool prop;
  default_sni : string prop;
  description : string prop;
  enabled : bool prop;
  id : string prop;
}

let make ?default_sni ?description ?id ~account_id ~enabled ~ips
    ~memberships __id =
  let __type = "cloudflare_address_map" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       can_delete = Prop.computed __type __id "can_delete";
       can_modify_ips = Prop.computed __type __id "can_modify_ips";
       default_sni = Prop.computed __type __id "default_sni";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_address_map
        (cloudflare_address_map ?default_sni ?description ?id
           ~account_id ~enabled ~ips ~memberships ());
    attrs = __attrs;
  }

let register ?tf_module ?default_sni ?description ?id ~account_id
    ~enabled ~ips ~memberships __id =
  let (r : _ Tf_core.resource) =
    make ?default_sni ?description ?id ~account_id ~enabled ~ips
      ~memberships __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
