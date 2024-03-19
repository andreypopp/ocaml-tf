(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type condition__request_ip = {
  in_ : string prop list option; [@option] [@key "in"]
      (** List of IP addresses or CIDR notation where the token may be used from. If not specified, the token will be valid for all IP addresses. *)
  not_in : string prop list option; [@option]
      (** List of IP addresses or CIDR notation where the token should not be used from. *)
}
[@@deriving yojson_of]
(** Request IP related conditions. *)

type condition = { request_ip : condition__request_ip list }
[@@deriving yojson_of]
(** Conditions under which the token should be considered valid. *)

type policy = {
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
  condition : condition list;
  policy : policy list;
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare API tokens.

Read more about permission groups and their applicable scopes in the
[developer documentation](https://developers.cloudflare.com/api/tokens/create/permissions).
 *)

let condition__request_ip ?in_ ?not_in () : condition__request_ip =
  { in_; not_in }

let condition ~request_ip () : condition = { request_ip }

let policy ?effect ~permission_groups ~resources () : policy =
  { effect; permission_groups; resources }

let cloudflare_api_token ?expires_on ?id ?not_before ~name ~condition
    ~policy () : cloudflare_api_token =
  { expires_on; id; name; not_before; condition; policy }

type t = {
  expires_on : string prop;
  id : string prop;
  issued_on : string prop;
  modified_on : string prop;
  name : string prop;
  not_before : string prop;
  status : string prop;
  value : string prop;
}

let register ?tf_module ?expires_on ?id ?not_before ~name ~condition
    ~policy __resource_id =
  let __resource_type = "cloudflare_api_token" in
  let __resource =
    cloudflare_api_token ?expires_on ?id ?not_before ~name ~condition
      ~policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_api_token __resource);
  let __resource_attributes =
    ({
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       id = Prop.computed __resource_type __resource_id "id";
       issued_on =
         Prop.computed __resource_type __resource_id "issued_on";
       modified_on =
         Prop.computed __resource_type __resource_id "modified_on";
       name = Prop.computed __resource_type __resource_id "name";
       not_before =
         Prop.computed __resource_type __resource_id "not_before";
       status = Prop.computed __resource_type __resource_id "status";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
