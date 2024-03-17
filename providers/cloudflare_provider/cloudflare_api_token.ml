(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_api_token__condition__request_ip = {
  in_ : string prop list option; [@option] [@key "in"]
      (** List of IP addresses or CIDR notation where the token may be used from. If not specified, the token will be valid for all IP addresses. *)
  not_in : string prop list option; [@option]
      (** List of IP addresses or CIDR notation where the token should not be used from. *)
}
[@@deriving yojson_of]
(** Request IP related conditions. *)

type cloudflare_api_token__condition = {
  request_ip : cloudflare_api_token__condition__request_ip list;
}
[@@deriving yojson_of]
(** Conditions under which the token should be considered valid. *)

type cloudflare_api_token__policy = {
  effect : string prop option; [@option]
      (** Effect of the policy. Available values: `allow`, `deny`. Defaults to `allow`. *)
  permission_groups : string prop list;
      (** List of permissions groups IDs. See [documentation](https://developers.cloudflare.com/api/tokens/create/permissions) for more information. *)
  resources : (string * string prop) list;
      (** Describes what operations against which resources are allowed or denied. *)
}
[@@deriving yojson_of]
(** Permissions policy. Multiple policy blocks can be defined. *)

type cloudflare_api_token = {
  expires_on : string prop option; [@option]
      (** The expiration time on or after which the token MUST NOT be accepted for processing. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Name of the API Token. *)
  not_before : string prop option; [@option]
      (** The time before which the token MUST NOT be accepted for processing. *)
  condition : cloudflare_api_token__condition list;
  policy : cloudflare_api_token__policy list;
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare API tokens.

Read more about permission groups and their applicable scopes in the
[developer documentation](https://developers.cloudflare.com/api/tokens/create/permissions).
 *)

let cloudflare_api_token ?expires_on ?id ?not_before ~name ~condition
    ~policy __resource_id =
  let __resource_type = "cloudflare_api_token" in
  let __resource =
    { expires_on; id; name; not_before; condition; policy }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_token __resource);
  ()
