(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type digitalocean_database_firewall = {
  cluster_id : string prop;
  id : string prop option; [@option]
  rule : rule list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_firewall) -> ()

let yojson_of_digitalocean_database_firewall =
  (function
   | { cluster_id = v_cluster_id; id = v_id; rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_firewall ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_firewall

[@@@deriving.end]

let rule ~type_ ~value () : rule = { type_; value }

let digitalocean_database_firewall ?id ~cluster_id ~rule () :
    digitalocean_database_firewall =
  { cluster_id; id; rule }

type t = {
  tf_name : string;
  cluster_id : string prop;
  id : string prop;
}

let make ?id ~cluster_id ~rule __id =
  let __type = "digitalocean_database_firewall" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_firewall
        (digitalocean_database_firewall ?id ~cluster_id ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~rule __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id ~rule __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
