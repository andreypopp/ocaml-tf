(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group = {
  id : string prop;
  priority : float prop option; [@option]
  profile : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : group) -> ()

let yojson_of_group =
  (function
   | { id = v_id; priority = v_priority; profile = v_profile } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_profile with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile", arg in
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_group

[@@@deriving.end]

type okta_app_group_assignments = {
  app_id : string prop;
  id : string prop option; [@option]
  group : group list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_group_assignments) -> ()

let yojson_of_okta_app_group_assignments =
  (function
   | { app_id = v_app_id; id = v_id; group = v_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_group then bnds
         else
           let arg = (yojson_of_list yojson_of_group) v_group in
           let bnd = "group", arg in
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_group_assignments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_group_assignments

[@@@deriving.end]

let group ?priority ?profile ~id () : group =
  { id; priority; profile }

let okta_app_group_assignments ?id ~app_id ~group () :
    okta_app_group_assignments =
  { app_id; id; group }

type t = { tf_name : string; app_id : string prop; id : string prop }

let make ?id ~app_id ~group __id =
  let __type = "okta_app_group_assignments" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_group_assignments
        (okta_app_group_assignments ?id ~app_id ~group ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id ~group __id =
  let (r : _ Tf_core.resource) = make ?id ~app_id ~group __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
