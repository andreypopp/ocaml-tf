(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type groups = {
  custom_profile_attributes : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : groups) -> ()

let yojson_of_groups =
  (function
   | {
       custom_profile_attributes = v_custom_profile_attributes;
       description = v_description;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_custom_profile_attributes
         in
         ("custom_profile_attributes", arg) :: bnds
       in
       `Assoc bnds
    : groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_groups

[@@@deriving.end]

type okta_groups = {
  id : string prop option; [@option]
  q : string prop option; [@option]
  search : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_groups) -> ()

let yojson_of_okta_groups =
  (function
   | { id = v_id; q = v_q; search = v_search; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_search with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "search", arg in
             bnd :: bnds
       in
       let bnds =
         match v_q with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "q", arg in
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
       `Assoc bnds
    : okta_groups -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_groups

[@@@deriving.end]

let okta_groups ?id ?q ?search ?type_ () : okta_groups =
  { id; q; search; type_ }

type t = {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  q : string prop;
  search : string prop;
  type_ : string prop;
}

let make ?id ?q ?search ?type_ __id =
  let __type = "okta_groups" in
  let __attrs =
    ({
       tf_name = __id;
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       q = Prop.computed __type __id "q";
       search = Prop.computed __type __id "search";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_groups (okta_groups ?id ?q ?search ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?q ?search ?type_ __id =
  let (r : _ Tf_core.resource) = make ?id ?q ?search ?type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
