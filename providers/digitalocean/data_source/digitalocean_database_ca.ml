(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_ca = {
  cluster_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_ca) -> ()

let yojson_of_digitalocean_database_ca =
  (function
   | { cluster_id = v_cluster_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : digitalocean_database_ca -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_ca

[@@@deriving.end]

let digitalocean_database_ca ?id ~cluster_id () :
    digitalocean_database_ca =
  { cluster_id; id }

type t = {
  certificate : string prop;
  cluster_id : string prop;
  id : string prop;
}

let make ?id ~cluster_id __id =
  let __type = "digitalocean_database_ca" in
  let __attrs =
    ({
       certificate = Prop.computed __type __id "certificate";
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_ca
        (digitalocean_database_ca ?id ~cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
