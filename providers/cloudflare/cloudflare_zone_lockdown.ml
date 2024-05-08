(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configurations = { target : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configurations) -> ()

let yojson_of_configurations =
  (function
   | { target = v_target; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : configurations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configurations

[@@@deriving.end]

type cloudflare_zone_lockdown = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  paused : bool prop option; [@option]
  priority : float prop option; [@option]
  urls : string prop list; [@default []] [@yojson_drop_default ( = )]
  zone_id : string prop;
  configurations : configurations list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_zone_lockdown) -> ()

let yojson_of_cloudflare_zone_lockdown =
  (function
   | {
       description = v_description;
       id = v_id;
       paused = v_paused;
       priority = v_priority;
       urls = v_urls;
       zone_id = v_zone_id;
       configurations = v_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_configurations then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configurations)
               v_configurations
           in
           let bnd = "configurations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         if [] = v_urls then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_urls
           in
           let bnd = "urls", arg in
           bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_paused with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "paused", arg in
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
    : cloudflare_zone_lockdown -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_zone_lockdown

[@@@deriving.end]

let configurations ~target ~value () : configurations =
  { target; value }

let cloudflare_zone_lockdown ?description ?id ?paused ?priority ~urls
    ~zone_id ~configurations () : cloudflare_zone_lockdown =
  {
    description;
    id;
    paused;
    priority;
    urls;
    zone_id;
    configurations;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  paused : bool prop;
  priority : float prop;
  urls : string list prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?priority ~urls ~zone_id
    ~configurations __id =
  let __type = "cloudflare_zone_lockdown" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       priority = Prop.computed __type __id "priority";
       urls = Prop.computed __type __id "urls";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_zone_lockdown
        (cloudflare_zone_lockdown ?description ?id ?paused ?priority
           ~urls ~zone_id ~configurations ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?priority ~urls
    ~zone_id ~configurations __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?priority ~urls ~zone_id
      ~configurations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
