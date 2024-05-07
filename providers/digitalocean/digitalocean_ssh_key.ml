(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_ssh_key = {
  id : string prop option; [@option]
  name : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_ssh_key) -> ()

let yojson_of_digitalocean_ssh_key =
  (function
   | { id = v_id; name = v_name; public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
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
    : digitalocean_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_ssh_key

[@@@deriving.end]

let digitalocean_ssh_key ?id ~name ~public_key () :
    digitalocean_ssh_key =
  { id; name; public_key }

type t = {
  tf_name : string;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
}

let make ?id ~name ~public_key __id =
  let __type = "digitalocean_ssh_key" in
  let __attrs =
    ({
       tf_name = __id;
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       public_key = Prop.computed __type __id "public_key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_ssh_key
        (digitalocean_ssh_key ?id ~name ~public_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~public_key __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~public_key __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
