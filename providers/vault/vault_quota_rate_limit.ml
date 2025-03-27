(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_quota_rate_limit = {
  block_interval : float prop option; [@option]
  id : string prop option; [@option]
  inheritable : bool prop option; [@option]
  interval : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  path : string prop option; [@option]
  rate : float prop;
  role : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_quota_rate_limit) -> ()

let yojson_of_vault_quota_rate_limit =
  (function
   | {
       block_interval = v_block_interval;
       id = v_id;
       inheritable = v_inheritable;
       interval = v_interval;
       name = v_name;
       namespace = v_namespace;
       path = v_path;
       rate = v_rate;
       role = v_role;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_role with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "role", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_float v_rate in
       ("rate", arg) :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_interval with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "interval", arg in
         bnd :: bnds
     in
     let bnds =
       match v_inheritable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "inheritable", arg in
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
       match v_block_interval with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "block_interval", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_quota_rate_limit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_quota_rate_limit

[@@@deriving.end]

let vault_quota_rate_limit ?block_interval ?id ?inheritable ?interval ?namespace ?path ?role ~name ~rate () =
  ({ block_interval; id; inheritable; interval; name; namespace; path; rate; role } : vault_quota_rate_limit)

type t = {
  tf_name : string;
  block_interval : float prop;
  id : string prop;
  inheritable : bool prop;
  interval : float prop;
  name : string prop;
  namespace : string prop;
  path : string prop;
  rate : float prop;
  role : string prop;
}

let make ?block_interval ?id ?inheritable ?interval ?namespace ?path ?role ~name ~rate __id =
  let __type = "vault_quota_rate_limit" in
  let __attrs =
    ({
       tf_name = __id;
       block_interval = Prop.computed __type __id "block_interval";
       id = Prop.computed __type __id "id";
       inheritable = Prop.computed __type __id "inheritable";
       interval = Prop.computed __type __id "interval";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       path = Prop.computed __type __id "path";
       rate = Prop.computed __type __id "rate";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_quota_rate_limit
        (vault_quota_rate_limit ?block_interval ?id ?inheritable ?interval ?namespace ?path ?role ~name ~rate ());
    attrs = __attrs;
  }

let register ?tf_module ?block_interval ?id ?inheritable ?interval ?namespace ?path ?role ~name ~rate __id =
  let (r : _ Tf_core.resource) =
    make ?block_interval ?id ?inheritable ?interval ?namespace ?path ?role ~name ~rate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
