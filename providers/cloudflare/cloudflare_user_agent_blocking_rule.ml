(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { target : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
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
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type cloudflare_user_agent_blocking_rule = {
  description : string prop;
  id : string prop option; [@option]
  mode : string prop;
  paused : bool prop;
  zone_id : string prop;
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_user_agent_blocking_rule) -> ()

let yojson_of_cloudflare_user_agent_blocking_rule =
  (function
   | {
       description = v_description;
       id = v_id;
       mode = v_mode;
       paused = v_paused;
       zone_id = v_zone_id;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_paused in
         ("paused", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_user_agent_blocking_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_user_agent_blocking_rule

[@@@deriving.end]

let configuration ~target ~value () : configuration =
  { target; value }

let cloudflare_user_agent_blocking_rule ?id ~description ~mode
    ~paused ~zone_id ~configuration () :
    cloudflare_user_agent_blocking_rule =
  { description; id; mode; paused; zone_id; configuration }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  mode : string prop;
  paused : bool prop;
  zone_id : string prop;
}

let make ?id ~description ~mode ~paused ~zone_id ~configuration __id
    =
  let __type = "cloudflare_user_agent_blocking_rule" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       paused = Prop.computed __type __id "paused";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_user_agent_blocking_rule
        (cloudflare_user_agent_blocking_rule ?id ~description ~mode
           ~paused ~zone_id ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~mode ~paused ~zone_id
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~description ~mode ~paused ~zone_id ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
