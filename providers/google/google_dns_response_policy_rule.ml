(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type local_data__local_datas = {
  name : string prop;
  rrdatas : string prop list option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_data__local_datas) -> ()

let yojson_of_local_data__local_datas =
  (function
   | {
       name = v_name;
       rrdatas = v_rrdatas;
       ttl = v_ttl;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rrdatas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rrdatas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : local_data__local_datas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_data__local_datas

[@@@deriving.end]

type local_data = { local_datas : local_data__local_datas list }
[@@deriving_inline yojson_of]

let _ = fun (_ : local_data) -> ()

let yojson_of_local_data =
  (function
   | { local_datas = v_local_datas } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_local_data__local_datas
             v_local_datas
         in
         ("local_datas", arg) :: bnds
       in
       `Assoc bnds
    : local_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_data

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_dns_response_policy_rule = {
  dns_name : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
  response_policy : string prop;
  rule_name : string prop;
  local_data : local_data list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_response_policy_rule) -> ()

let yojson_of_google_dns_response_policy_rule =
  (function
   | {
       dns_name = v_dns_name;
       id = v_id;
       project = v_project;
       response_policy = v_response_policy;
       rule_name = v_rule_name;
       local_data = v_local_data;
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
         let arg =
           yojson_of_list yojson_of_local_data v_local_data
         in
         ("local_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_response_policy
         in
         ("response_policy", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dns_name in
         ("dns_name", arg) :: bnds
       in
       `Assoc bnds
    : google_dns_response_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_response_policy_rule

[@@@deriving.end]

let local_data__local_datas ?rrdatas ?ttl ~name ~type_ () :
    local_data__local_datas =
  { name; rrdatas; ttl; type_ }

let local_data ~local_datas () : local_data = { local_datas }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_response_policy_rule ?id ?project ?(local_data = [])
    ?timeouts ~dns_name ~response_policy ~rule_name () :
    google_dns_response_policy_rule =
  {
    dns_name;
    id;
    project;
    response_policy;
    rule_name;
    local_data;
    timeouts;
  }

type t = {
  tf_name : string;
  dns_name : string prop;
  id : string prop;
  project : string prop;
  response_policy : string prop;
  rule_name : string prop;
}

let make ?id ?project ?(local_data = []) ?timeouts ~dns_name
    ~response_policy ~rule_name __id =
  let __type = "google_dns_response_policy_rule" in
  let __attrs =
    ({
       tf_name = __id;
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       response_policy = Prop.computed __type __id "response_policy";
       rule_name = Prop.computed __type __id "rule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_response_policy_rule
        (google_dns_response_policy_rule ?id ?project ~local_data
           ?timeouts ~dns_name ~response_policy ~rule_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?(local_data = []) ?timeouts
    ~dns_name ~response_policy ~rule_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~local_data ?timeouts ~dns_name
      ~response_policy ~rule_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
