(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transit_secret_cache_config = {
  backend : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
  size : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transit_secret_cache_config) -> ()

let yojson_of_vault_transit_secret_cache_config =
  (function
   | { backend = v_backend; id = v_id; namespace = v_namespace; size = v_size } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_size in
       ("size", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     `Assoc bnds
    : vault_transit_secret_cache_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transit_secret_cache_config

[@@@deriving.end]

let vault_transit_secret_cache_config ?id ?namespace ~backend ~size () =
  ({ backend; id; namespace; size } : vault_transit_secret_cache_config)

type t = {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  size : float prop;
}

let make ?id ?namespace ~backend ~size __id =
  let __type = "vault_transit_secret_cache_config" in
  let __attrs =
    ({
       tf_name = __id;
       backend = Prop.computed __type __id "backend";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       size = Prop.computed __type __id "size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transit_secret_cache_config (vault_transit_secret_cache_config ?id ?namespace ~backend ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?namespace ~backend ~size __id =
  let (r : _ Tf_core.resource) = make ?id ?namespace ~backend ~size __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
