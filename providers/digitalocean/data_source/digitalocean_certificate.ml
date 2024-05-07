(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_certificate = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_certificate) -> ()

let yojson_of_digitalocean_certificate =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_certificate

[@@@deriving.end]

let digitalocean_certificate ?id ~name () : digitalocean_certificate
    =
  { id; name }

type t = {
  tf_name : string;
  domains : string list prop;
  id : string prop;
  name : string prop;
  not_after : string prop;
  sha1_fingerprint : string prop;
  state : string prop;
  type_ : string prop;
  uuid : string prop;
}

let make ?id ~name __id =
  let __type = "digitalocean_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       not_after = Prop.computed __type __id "not_after";
       sha1_fingerprint =
         Prop.computed __type __id "sha1_fingerprint";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_certificate
        (digitalocean_certificate ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
