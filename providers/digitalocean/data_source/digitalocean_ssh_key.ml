(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_ssh_key = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_ssh_key) -> ()

let yojson_of_digitalocean_ssh_key =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_ssh_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_ssh_key

[@@@deriving.end]

let digitalocean_ssh_key ~name () : digitalocean_ssh_key = { name }

type t = {
  tf_name : string;
  fingerprint : string prop;
  id : float prop;
  name : string prop;
  public_key : string prop;
}

let make ~name __id =
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
      yojson_of_digitalocean_ssh_key (digitalocean_ssh_key ~name ());
    attrs = __attrs;
  }

let register ?tf_module ~name __id =
  let (r : _ Tf_core.resource) = make ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
