(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_address_map__ips = {
  ip : string;  (** An IPv4 or IPv6 address. *)
}
[@@deriving yojson_of]
(** The set of IPs on the Address Map. *)

type cloudflare_address_map__memberships = {
  can_delete : bool;
      (** Controls whether the membership can be deleted via the API or not. *)
  identifier : string;  (** Identifier of the account or zone. *)
  kind : string;  (** The type of the membership. *)
}
[@@deriving yojson_of]
(** Zones and Accounts which will be assigned IPs on this Address Map. *)

type cloudflare_address_map = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  default_sni : string option; [@option]
      (** If you have legacy TLS clients which do not send the TLS server name indicator, then you can specify one default SNI on the map. *)
  description : string option; [@option]
      (** Description of the address map. *)
  enabled : bool;  (** Whether the Address Map is enabled or not. *)
  ips : cloudflare_address_map__ips list;
  memberships : cloudflare_address_map__memberships list;
}
[@@deriving yojson_of]
(** Provides the ability to manage IP addresses that can be used by DNS records when
they are proxied through Cloudflare.
 *)

let cloudflare_address_map ?default_sni ?description ~account_id
    ~enabled ~ips ~memberships __resource_id =
  let __resource_type = "cloudflare_address_map" in
  let __resource =
    {
      account_id;
      default_sni;
      description;
      enabled;
      ips;
      memberships;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_address_map __resource);
  ()
