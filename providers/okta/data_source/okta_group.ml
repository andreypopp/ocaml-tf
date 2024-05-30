(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_group = {
  delay_read_seconds : string prop option; [@option]
  id : string prop option; [@option]
  include_users : bool prop option; [@option]
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_group) -> ()

let yojson_of_okta_group =
  (function
   | {
       delay_read_seconds = v_delay_read_seconds;
       id = v_id;
       include_users = v_include_users;
       name = v_name;
       type_ = v_type_;
     } ->
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_users", arg in
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
         match v_delay_read_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delay_read_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_group

[@@@deriving.end]

let okta_group ?delay_read_seconds ?id ?include_users ?name ?type_ ()
    : okta_group =
  { delay_read_seconds; id; include_users; name; type_ }

type t = {
  tf_name : string;
  delay_read_seconds : string prop;
  description : string prop;
  id : string prop;
  include_users : bool prop;
  name : string prop;
  type_ : string prop;
  users : string list prop;
}

let make ?delay_read_seconds ?id ?include_users ?name ?type_ __id =
  let __type = "okta_group" in
  let __attrs =
    ({
       tf_name = __id;
       delay_read_seconds =
         Prop.computed __type __id "delay_read_seconds";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       include_users = Prop.computed __type __id "include_users";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_group
        (okta_group ?delay_read_seconds ?id ?include_users ?name
           ?type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?delay_read_seconds ?id ?include_users ?name
    ?type_ __id =
  let (r : _ Tf_core.resource) =
    make ?delay_read_seconds ?id ?include_users ?name ?type_ __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
