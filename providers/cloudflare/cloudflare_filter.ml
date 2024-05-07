(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_filter = {
  description : string prop option; [@option]
  expression : string prop;
  id : string prop option; [@option]
  paused : bool prop option; [@option]
  ref : string prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_filter) -> ()

let yojson_of_cloudflare_filter =
  (function
   | {
       description = v_description;
       expression = v_expression;
       id = v_id;
       paused = v_paused;
       ref = v_ref;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ref", arg in
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
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
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
    : cloudflare_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_filter

[@@@deriving.end]

let cloudflare_filter ?description ?id ?paused ?ref ~expression
    ~zone_id () : cloudflare_filter =
  { description; expression; id; paused; ref; zone_id }

type t = {
  tf_name : string;
  description : string prop;
  expression : string prop;
  id : string prop;
  paused : bool prop;
  ref : string prop;
  zone_id : string prop;
}

let make ?description ?id ?paused ?ref ~expression ~zone_id __id =
  let __type = "cloudflare_filter" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       expression = Prop.computed __type __id "expression";
       id = Prop.computed __type __id "id";
       paused = Prop.computed __type __id "paused";
       ref = Prop.computed __type __id "ref";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_filter
        (cloudflare_filter ?description ?id ?paused ?ref ~expression
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?paused ?ref ~expression
    ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?paused ?ref ~expression ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
