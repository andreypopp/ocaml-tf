(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_email_routing_settings = {
  enabled : bool prop;
  id : string prop option; [@option]
  skip_wizard : bool prop option; [@option]
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_email_routing_settings) -> ()

let yojson_of_cloudflare_email_routing_settings =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       skip_wizard = v_skip_wizard;
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
         match v_skip_wizard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_wizard", arg in
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_email_routing_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_email_routing_settings

[@@@deriving.end]

let cloudflare_email_routing_settings ?id ?skip_wizard ~enabled
    ~zone_id () : cloudflare_email_routing_settings =
  { enabled; id; skip_wizard; zone_id }

type t = {
  created : string prop;
  enabled : bool prop;
  id : string prop;
  modified : string prop;
  name : string prop;
  skip_wizard : bool prop;
  status : string prop;
  tag : string prop;
  zone_id : string prop;
}

let make ?id ?skip_wizard ~enabled ~zone_id __id =
  let __type = "cloudflare_email_routing_settings" in
  let __attrs =
    ({
       created = Prop.computed __type __id "created";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       modified = Prop.computed __type __id "modified";
       name = Prop.computed __type __id "name";
       skip_wizard = Prop.computed __type __id "skip_wizard";
       status = Prop.computed __type __id "status";
       tag = Prop.computed __type __id "tag";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_settings
        (cloudflare_email_routing_settings ?id ?skip_wizard ~enabled
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?skip_wizard ~enabled ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?skip_wizard ~enabled ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
