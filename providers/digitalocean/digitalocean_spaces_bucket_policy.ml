(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_policy = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket_policy *)

let digitalocean_spaces_bucket_policy ?id ~bucket ~policy ~region ()
    : digitalocean_spaces_bucket_policy =
  { bucket; id; policy; region }

type t = {
  bucket : string prop;
  id : string prop;
  policy : string prop;
  region : string prop;
}

let make ?id ~bucket ~policy ~region __id =
  let __type = "digitalocean_spaces_bucket_policy" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket_policy
        (digitalocean_spaces_bucket_policy ?id ~bucket ~policy
           ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~policy ~region __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~policy ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
