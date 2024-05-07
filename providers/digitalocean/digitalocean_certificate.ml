(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_certificate = {
  certificate_chain : string prop option; [@option]
  domains : string prop list option; [@option]
  id : string prop option; [@option]
  leaf_certificate : string prop option; [@option]
  name : string prop;
  private_key : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_certificate) -> ()

let yojson_of_digitalocean_certificate =
  (function
   | {
       certificate_chain = v_certificate_chain;
       domains = v_domains;
       id = v_id;
       leaf_certificate = v_leaf_certificate;
       name = v_name;
       private_key = v_private_key;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_leaf_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "leaf_certificate", arg in
             bnd :: bnds
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
         match v_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_certificate

[@@@deriving.end]

let digitalocean_certificate ?certificate_chain ?domains ?id
    ?leaf_certificate ?private_key ?type_ ~name () :
    digitalocean_certificate =
  {
    certificate_chain;
    domains;
    id;
    leaf_certificate;
    name;
    private_key;
    type_;
  }

type t = {
  tf_name : string;
  certificate_chain : string prop;
  domains : string list prop;
  id : string prop;
  leaf_certificate : string prop;
  name : string prop;
  not_after : string prop;
  private_key : string prop;
  sha1_fingerprint : string prop;
  state : string prop;
  type_ : string prop;
  uuid : string prop;
}

let make ?certificate_chain ?domains ?id ?leaf_certificate
    ?private_key ?type_ ~name __id =
  let __type = "digitalocean_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       domains = Prop.computed __type __id "domains";
       id = Prop.computed __type __id "id";
       leaf_certificate =
         Prop.computed __type __id "leaf_certificate";
       name = Prop.computed __type __id "name";
       not_after = Prop.computed __type __id "not_after";
       private_key = Prop.computed __type __id "private_key";
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
        (digitalocean_certificate ?certificate_chain ?domains ?id
           ?leaf_certificate ?private_key ?type_ ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?domains ?id
    ?leaf_certificate ?private_key ?type_ ~name __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?domains ?id ?leaf_certificate
      ?private_key ?type_ ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
