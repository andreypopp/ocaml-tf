(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = {
  content_type : string prop option; [@option]
  insecure_ssl : bool prop option; [@option]
  secret : string prop option; [@option]
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       content_type = v_content_type;
       insecure_ssl = v_insecure_ssl;
       secret = v_secret;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insecure_ssl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure_ssl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type github_organization_webhook = {
  active : bool prop option; [@option]
  events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  id : string prop option; [@option]
  configuration : configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_organization_webhook) -> ()

let yojson_of_github_organization_webhook =
  (function
   | {
       active = v_active;
       events = v_events;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_events then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_events
           in
           let bnd = "events", arg in
           bnd :: bnds
       in
       let bnds =
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_organization_webhook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_organization_webhook

[@@@deriving.end]

let configuration ?content_type ?insecure_ssl ?secret ~url () :
    configuration =
  { content_type; insecure_ssl; secret; url }

let github_organization_webhook ?active ?id ?(configuration = [])
    ~events () : github_organization_webhook =
  { active; events; id; configuration }

type t = {
  tf_name : string;
  active : bool prop;
  etag : string prop;
  events : string list prop;
  id : string prop;
  url : string prop;
}

let make ?active ?id ?(configuration = []) ~events __id =
  let __type = "github_organization_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       active = Prop.computed __type __id "active";
       etag = Prop.computed __type __id "etag";
       events = Prop.computed __type __id "events";
       id = Prop.computed __type __id "id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_organization_webhook
        (github_organization_webhook ?active ?id ~configuration
           ~events ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ?(configuration = []) ~events
    __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ~configuration ~events __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
