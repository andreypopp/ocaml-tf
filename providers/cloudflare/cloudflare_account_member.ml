(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_account_member = {
  account_id : string prop;
      (** Account ID to create the account member in. *)
  email_address : string prop;
      (** The email address of the user who you wish to manage. Following creation, this field becomes read only via the API and cannot be updated. *)
  id : string prop option; [@option]  (** id *)
  role_ids : string prop list;
      (** List of account role IDs that you want to assign to a member. *)
  status : string prop option; [@option]
      (** A member's status in the account. Available values: `accepted`, `pending`. *)
}
[@@deriving yojson_of]
(** Provides a resource which manages Cloudflare account members.
 *)

let cloudflare_account_member ?id ?status ~account_id ~email_address
    ~role_ids () : cloudflare_account_member =
  { account_id; email_address; id; role_ids; status }

type t = {
  account_id : string prop;
  email_address : string prop;
  id : string prop;
  role_ids : string list prop;
  status : string prop;
}

let make ?id ?status ~account_id ~email_address ~role_ids __id =
  let __type = "cloudflare_account_member" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       email_address = Prop.computed __type __id "email_address";
       id = Prop.computed __type __id "id";
       role_ids = Prop.computed __type __id "role_ids";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_account_member
        (cloudflare_account_member ?id ?status ~account_id
           ~email_address ~role_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~account_id ~email_address
    ~role_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~account_id ~email_address ~role_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
