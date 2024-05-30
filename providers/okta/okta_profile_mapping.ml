(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type mappings = {
  expression : string prop;
  id : string prop;
  push_status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mappings) -> ()

let yojson_of_mappings =
  (function
   | {
       expression = v_expression;
       id = v_id;
       push_status = v_push_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_push_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "push_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expression in
         ("expression", arg) :: bnds
       in
       `Assoc bnds
    : mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mappings

[@@@deriving.end]

type okta_profile_mapping = {
  always_apply : bool prop option; [@option]
  delete_when_absent : bool prop option; [@option]
  id : string prop option; [@option]
  source_id : string prop;
  target_id : string prop;
  mappings : mappings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_profile_mapping) -> ()

let yojson_of_okta_profile_mapping =
  (function
   | {
       always_apply = v_always_apply;
       delete_when_absent = v_delete_when_absent;
       id = v_id;
       source_id = v_source_id;
       target_id = v_target_id;
       mappings = v_mappings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_mappings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mappings) v_mappings
           in
           let bnd = "mappings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_id in
         ("source_id", arg) :: bnds
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
         match v_delete_when_absent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_when_absent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_always_apply with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "always_apply", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_profile_mapping -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_profile_mapping

[@@@deriving.end]

let mappings ?push_status ~expression ~id () : mappings =
  { expression; id; push_status }

let okta_profile_mapping ?always_apply ?delete_when_absent ?id
    ~source_id ~target_id ~mappings () : okta_profile_mapping =
  {
    always_apply;
    delete_when_absent;
    id;
    source_id;
    target_id;
    mappings;
  }

type t = {
  tf_name : string;
  always_apply : bool prop;
  delete_when_absent : bool prop;
  id : string prop;
  source_id : string prop;
  source_name : string prop;
  source_type : string prop;
  target_id : string prop;
  target_name : string prop;
  target_type : string prop;
}

let make ?always_apply ?delete_when_absent ?id ~source_id ~target_id
    ~mappings __id =
  let __type = "okta_profile_mapping" in
  let __attrs =
    ({
       tf_name = __id;
       always_apply = Prop.computed __type __id "always_apply";
       delete_when_absent =
         Prop.computed __type __id "delete_when_absent";
       id = Prop.computed __type __id "id";
       source_id = Prop.computed __type __id "source_id";
       source_name = Prop.computed __type __id "source_name";
       source_type = Prop.computed __type __id "source_type";
       target_id = Prop.computed __type __id "target_id";
       target_name = Prop.computed __type __id "target_name";
       target_type = Prop.computed __type __id "target_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_profile_mapping
        (okta_profile_mapping ?always_apply ?delete_when_absent ?id
           ~source_id ~target_id ~mappings ());
    attrs = __attrs;
  }

let register ?tf_module ?always_apply ?delete_when_absent ?id
    ~source_id ~target_id ~mappings __id =
  let (r : _ Tf_core.resource) =
    make ?always_apply ?delete_when_absent ?id ~source_id ~target_id
      ~mappings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
