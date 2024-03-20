(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_r2_bucket = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  location : string prop option; [@option]
      (** The location hint of the R2 bucket. *)
  name : string prop;  (** The name of the R2 bucket. *)
}
[@@deriving yojson_of]
(** The [R2 Bucket](https://developers.cloudflare.com/r2/) resource allows you to manage Cloudflare R2 buckets.
 *)

let cloudflare_r2_bucket ?location ~account_id ~name () :
    cloudflare_r2_bucket =
  { account_id; location; name }

type t = {
  account_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
}

let make ?location ~account_id ~name __id =
  let __type = "cloudflare_r2_bucket" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_r2_bucket
        (cloudflare_r2_bucket ?location ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?location ~account_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?location ~account_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
