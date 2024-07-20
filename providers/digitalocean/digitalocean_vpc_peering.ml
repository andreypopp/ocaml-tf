(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type digitalocean_vpc_peering = {
  name : string prop;
  vpc_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_vpc_peering) -> ()

let yojson_of_digitalocean_vpc_peering =
  (function
   | { name = v_name; vpc_ids = v_vpc_ids; timeouts = v_timeouts } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_vpc_ids
           in
           let bnd = "vpc_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_vpc_peering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_vpc_peering

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let digitalocean_vpc_peering ?timeouts ~name ~vpc_ids () :
    digitalocean_vpc_peering =
  { name; vpc_ids; timeouts }

type t = {
  tf_name : string;
  created_at : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  vpc_ids : string list prop;
}

let make ?timeouts ~name ~vpc_ids __id =
  let __type = "digitalocean_vpc_peering" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
       vpc_ids = Prop.computed __type __id "vpc_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_vpc_peering
        (digitalocean_vpc_peering ?timeouts ~name ~vpc_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~name ~vpc_ids __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~name ~vpc_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
