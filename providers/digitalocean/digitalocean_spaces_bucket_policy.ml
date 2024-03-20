(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_spaces_bucket_policy = {
  bucket : string prop;
  id : string prop option; [@option]
  policy : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket_policy) -> ()

let yojson_of_digitalocean_spaces_bucket_policy =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       policy = v_policy;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_spaces_bucket_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket_policy

[@@@deriving.end]

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
