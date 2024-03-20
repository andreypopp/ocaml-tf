(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~account_id ~name __id =
  let __type = "cloudflare_queue" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_queue
        (cloudflare_queue ?id ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
