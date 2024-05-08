(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition__request_ip = {
  in_ : string prop list option; [@option] [@key "in"]
  not_in : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__request_ip) -> ()

let yojson_of_condition__request_ip =
  (function
   | { in_ = v_in_; not_in = v_not_in } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_not_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "not_in", arg in
             bnd :: bnds
       in
       let bnds =
         match v_in_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : condition__request_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__request_ip

[@@@deriving.end]

type condition = {
  request_ip : condition__request_ip list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | { request_ip = v_request_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_request_ip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_condition__request_ip)
               v_request_ip
           in
           let bnd = "request_ip", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type policy = {
  effect : string prop option; [@option]
  permission_groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  resources : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : policy) -> ()

let yojson_of_policy =
  (function
   | {
       effect = v_effect;
       permission_groups = v_permission_groups;
       resources = v_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_resources
         in
         ("resources", arg) :: bnds
       in
       let bnds =
         if [] = v_permission_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permission_groups
           in
           let bnd = "permission_groups", arg in
           bnd :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_policy

[@@@deriving.end]

type cloudflare_api_token = {
  expires_on : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  not_before : string prop option; [@option]
  condition : condition list;
      [@default []] [@yojson_drop_default ( = )]
  policy : policy list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_api_token) -> ()

let yojson_of_cloudflare_api_token =
  (function
   | {
       expires_on = v_expires_on;
       id = v_id;
       name = v_name;
       not_before = v_not_before;
       condition = v_condition;
       policy = v_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_policy then bnds
         else
           let arg = (yojson_of_list yojson_of_policy) v_policy in
           let bnd = "policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_condition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_condition) v_condition
           in
           let bnd = "condition", arg in
           bnd :: bnds
       in
       let bnds =
         match v_not_before with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "not_before", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_expires_on with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expires_on", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_api_token -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_token

[@@@deriving.end]

let condition__request_ip ?in_ ?not_in () : condition__request_ip =
  { in_; not_in }

let condition ?(request_ip = []) () : condition = { request_ip }

let policy ?effect ~permission_groups ~resources () : policy =
  { effect; permission_groups; resources }

let cloudflare_api_token ?expires_on ?id ?not_before
    ?(condition = []) ~name ~policy () : cloudflare_api_token =
  { expires_on; id; name; not_before; condition; policy }

type t = {
  tf_name : string;
  expires_on : string prop;
  id : string prop;
  issued_on : string prop;
  modified_on : string prop;
  name : string prop;
  not_before : string prop;
  status : string prop;
  value : string prop;
}

let make ?expires_on ?id ?not_before ?(condition = []) ~name ~policy
    __id =
  let __type = "cloudflare_api_token" in
  let __attrs =
    ({
       tf_name = __id;
       expires_on = Prop.computed __type __id "expires_on";
       id = Prop.computed __type __id "id";
       issued_on = Prop.computed __type __id "issued_on";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       not_before = Prop.computed __type __id "not_before";
       status = Prop.computed __type __id "status";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_token
        (cloudflare_api_token ?expires_on ?id ?not_before ~condition
           ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?expires_on ?id ?not_before ?(condition = [])
    ~name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?expires_on ?id ?not_before ~condition ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
