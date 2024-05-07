(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_uptime_check = {
  enabled : bool prop option; [@option]
  name : string prop;
  regions : string prop list option; [@option]
  target : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_uptime_check) -> ()

let yojson_of_digitalocean_uptime_check =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       regions = v_regions;
       target = v_target;
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
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : digitalocean_uptime_check -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_uptime_check

[@@@deriving.end]

let digitalocean_uptime_check ?enabled ?regions ?type_ ~name ~target
    () : digitalocean_uptime_check =
  { enabled; name; regions; target; type_ }

type t = {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  regions : string list prop;
  target : string prop;
  type_ : string prop;
}

let make ?enabled ?regions ?type_ ~name ~target __id =
  let __type = "digitalocean_uptime_check" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       regions = Prop.computed __type __id "regions";
       target = Prop.computed __type __id "target";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_uptime_check
        (digitalocean_uptime_check ?enabled ?regions ?type_ ~name
           ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?regions ?type_ ~name ~target __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?regions ?type_ ~name ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
