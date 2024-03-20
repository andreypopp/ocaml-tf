(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_d1_database = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  name : string prop;  (** The name of the D1 Database. *)
}
[@@deriving yojson_of]
(** The [D1 Database](https://developers.cloudflare.com/d1/) resource allows you to manage Cloudflare D1 databases.
 *)

let cloudflare_d1_database ~account_id ~name () :
    cloudflare_d1_database =
  { account_id; name }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  version : string prop;
}

let make ~account_id ~name __id =
  let __type = "cloudflare_d1_database" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_d1_database
        (cloudflare_d1_database ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~account_id ~name __id =
  let (r : _ Tf_core.resource) = make ~account_id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
