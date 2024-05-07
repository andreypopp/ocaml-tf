(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type digitalocean_vpc = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ip_range : string prop option; [@option]
  name : string prop;
  region : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_vpc) -> ()

let yojson_of_digitalocean_vpc =
  (function
   | {
       description = v_description;
       id = v_id;
       ip_range = v_ip_range;
       name = v_name;
       region = v_region;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_range", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_vpc

[@@@deriving.end]

let timeouts ?delete () : timeouts = { delete }

let digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
    ~region () : digitalocean_vpc =
  { description; id; ip_range; name; region; timeouts }

type t = {
  tf_name : string;
  created_at : string prop;
  default : bool prop;
  description : string prop;
  id : string prop;
  ip_range : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

let make ?description ?id ?ip_range ?timeouts ~name ~region __id =
  let __type = "digitalocean_vpc" in
  let __attrs =
    ({
       tf_name = __id;
       created_at = Prop.computed __type __id "created_at";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ip_range = Prop.computed __type __id "ip_range";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_vpc
        (digitalocean_vpc ?description ?id ?ip_range ?timeouts ~name
           ~region ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ip_range ?timeouts ~name
    ~region __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ip_range ?timeouts ~name ~region __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
