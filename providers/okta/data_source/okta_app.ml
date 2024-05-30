(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app = {
  active_only : bool prop option; [@option]
  id : string prop option; [@option]
  label : string prop option; [@option]
  label_prefix : string prop option; [@option]
  skip_groups : bool prop option; [@option]
  skip_users : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app) -> ()

let yojson_of_okta_app =
  (function
   | {
       active_only = v_active_only;
       id = v_id;
       label = v_label;
       label_prefix = v_label_prefix;
       skip_groups = v_skip_groups;
       skip_users = v_skip_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_skip_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label", arg in
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
         match v_active_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app

[@@@deriving.end]

let okta_app ?active_only ?id ?label ?label_prefix ?skip_groups
    ?skip_users () : okta_app =
  { active_only; id; label; label_prefix; skip_groups; skip_users }

type t = {
  tf_name : string;
  active_only : bool prop;
  groups : string list prop;
  id : string prop;
  label : string prop;
  label_prefix : string prop;
  links : string prop;
  name : string prop;
  skip_groups : bool prop;
  skip_users : bool prop;
  status : string prop;
  users : string list prop;
}

let make ?active_only ?id ?label ?label_prefix ?skip_groups
    ?skip_users __id =
  let __type = "okta_app" in
  let __attrs =
    ({
       tf_name = __id;
       active_only = Prop.computed __type __id "active_only";
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       label_prefix = Prop.computed __type __id "label_prefix";
       links = Prop.computed __type __id "links";
       name = Prop.computed __type __id "name";
       skip_groups = Prop.computed __type __id "skip_groups";
       skip_users = Prop.computed __type __id "skip_users";
       status = Prop.computed __type __id "status";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app
        (okta_app ?active_only ?id ?label ?label_prefix ?skip_groups
           ?skip_users ());
    attrs = __attrs;
  }

let register ?tf_module ?active_only ?id ?label ?label_prefix
    ?skip_groups ?skip_users __id =
  let (r : _ Tf_core.resource) =
    make ?active_only ?id ?label ?label_prefix ?skip_groups
      ?skip_users __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
